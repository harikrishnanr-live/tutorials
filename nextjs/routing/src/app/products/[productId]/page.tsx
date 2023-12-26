export default function productDetails({params}: {
  params : { productId: string }
}){
  return <h4>Proudct Details {params.productId}</h4>
}