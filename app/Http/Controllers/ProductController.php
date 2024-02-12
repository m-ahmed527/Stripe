<?php

namespace App\Http\Controllers;

use App\Mail\CheckOutMail;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\Mail;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();

        return view('product.index', compact('products'));
    }

    public function checkout(Request $request)
    {
        $stripe = new \Stripe\StripeClient(env('STRIPE_SECRET'));
        $products = Product::all();
        // dd($products);
        $totalPrice = 0;
        $lineItems = [];

        foreach ($products as $product) {
            $totalPrice += 2;

            $lineItems[] = [
                'price_data' => [
                    'currency' => 'usd',
                    'product_data' => [
                        'name' => $product->name,
                    ],
                    'unit_amount' => 2 * 100,
                ],
                'quantity' => 1,
            ];
        }
        // dd($lineItems);
        $session = $stripe->checkout->sessions->create([
            'line_items' => $lineItems,
            'mode' => 'payment',
            'success_url' => route('checkout.success', [], true)."?session_id={CHECKOUT_SESSION_ID}",
            'cancel_url' => route('checkout.cancel', [], true),
        ]);

        $order = new Order();
        $order->status = 'unpaid';
        $order->total_price = $totalPrice;
        $order->session_id = $session->id;
        $order->user_id = auth()->user()->id;
        $order->save();

        return redirect($session->url);
    }




    public function success(Request $request)
    {
       \Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        $sessionId=$request->get('session_id');

        try {
            $session = \Stripe\Checkout\Session::retrieve($sessionId);
            if (!$session){
                    throw new NotFoundHttpException;

                }
                $order= Order::where('session_id',$session->id)->where('status','unpaid')->first();
                if (!$order){
                    throw new NotFoundHttpException;
                }
                $order->status= 'paid';
                $order->save();

                if($order->status=='paid'){
                    $data=[
                        'title'=>'Payment Succes',
                        'body'=>'Your payment has been succesfully done',
                        'amount'=>$order->total_price,
                    ];
                    Mail::to(auth()->user()->email)->send(new CheckOutMail($data));
                }
                // $customer = \Stripe\Customer::retrieve($session->customer,[]);
                // dd($order);

                return view('product.checkout-success' );

        } catch (\Exception $e) {
            throw new NotFoundHttpException();
        }


    }

    public function cancel(){
        return "Something went wrong";
    }


//     public function webhook(){


// \Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
// $endpoint_secret = env('STRIPE_WEBHOOK_SECRET');

// $payload = @file_get_contents('php://input');
// $event = null;

// try {
//   $event = \Stripe\Event::constructFrom(
//     json_decode($payload, true)
//   );
// } catch(\UnexpectedValueException $e) {
//   // Invalid payload
//   return response('', 400);
// }
// if ($endpoint_secret) {
//   // Only verify the event if there is an endpoint secret defined
//   // Otherwise use the basic decoded event
//   $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
//   try {
//     $event = \Stripe\Webhook::constructEvent(
//       $payload, $sig_header, $endpoint_secret
//     );
//   } catch(\Stripe\Exception\SignatureVerificationException $e) {
//     // Invalid signature
//     return response('', 400);
//   }
// }

// // Handle the event
// switch ($event->type) {
//   case 'payment_intent.succeeded':
//     $paymentIntent = $event->data->object; // contains a \Stripe\PaymentIntent
//     // Then define and call a method to handle the successful payment intent.
//     // handlePaymentIntentSucceeded($paymentIntent);
//     break;
//   case 'payment_method.attached':
//     $paymentMethod = $event->data->object; // contains a \Stripe\PaymentMethod
//     // Then define and call a method to handle the successful attachment of a PaymentMethod.
//     // handlePaymentMethodAttached($paymentMethod);
//     break;
//   default:
//     // Unexpected event type
//     error_log('Received unknown event type');
// }

// return response('', 200);
//     }
}
