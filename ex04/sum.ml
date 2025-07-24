let sum x y = x +. y

let () =
  let result1 = sum 3.14 2.86 in
  Printf.printf "sum 3.14 2.86 = %.2f\n" result1;
  
  let result2 = sum 0.0 5.5 in
  Printf.printf "sum 0.0 5.5 = %.2f\n" result2;
  
  let result3 = sum (-2.5) 7.5 in
  Printf.printf "sum (-2.5) 7.5 = %.2f\n" result3;
  
  let result4 = sum 1.23456 4.56789 in
  Printf.printf "sum 1.23456 4.56789 = %.5f\n" result4;
  
  let result5 = sum 0.0 0.0 in
  Printf.printf "sum 0.0 0.0 = %.2f\n" result5;
  
  let result6 = sum (-10.5) 10.5 in
  Printf.printf "sum (-10.5) 10.5 = %.2f\n" result6;
  
  let result7 = sum 999999.99 0.01 in
  Printf.printf "sum 999999.99 0.01 = %.2f\n" result7;

  let add_five = sum 5.0 in
  let result8 = add_five 3.0 in
  Printf.printf "Partial application: add_five 3.0 = %.2f\n" result8;

