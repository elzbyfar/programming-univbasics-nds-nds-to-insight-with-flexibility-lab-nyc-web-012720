vm = [
  [
    [
      {:name=>"Vanilla Cookies", :price=>3}, 
      {:name=>"Pistachio Cookies", :price=>3}, 
      {:name=>"Chocolate Cookies", :price=>3}, 
      {:name=>"Chocolate Chip Cookies", :price=>3}], 
    [
      {:name=>"Tooth-Melters", :price=>12},
      {:name=>"Tooth-Destroyers", :price=>12}, 
      {:name=>"Enamel Eaters", :price=>12}, 
      {:name=>"Dentist's Nighmare", :price=>20}], 
    [
      {:name=>"Gummy Sour Apple", :price=>3}, 
      {:name=>"Gummy Apple", :price=>5}, 
      {:name=>"Gummy Moldy Apple", :price=>1}]
  ], 
  [
    [
      {:name=>"Grape Drink", :price=>1}, 
      {:name=>"Orange Drink", :price=>1}, 
      {:name=>"Pineapple Drink", :price=>1}], 
    [
      {:name=>"Mints", :price=>13}, 
      {:name=>"Curiously Toxic Mints", :price=>1000}, 
      {:name=>"US Mints", :price=>99}]
  ]
]



def flat_snack_arr(machine)
  flat_arr = []
  i = 0 
  while i < machine.length do 
    j = 0 
    while j < machine[i].length do
      k = 0 
      while k < machine[i][j].length do
        flat_arr << machine[i][j][k]
        k+=1 
      end 
      j+=1 
    end
    i+=1 
  end 
  
  flat_arr
end
  
def snack_hash(machine)
  result = {} 
  flat_arr = flat_snack_arr(machine)
  i = 0 
  while i < flat_arr.length do 
    snack_price = flat_arr[i][:price]
    if !result[snack_price]
      result[snack_price] = 1
    else
      result[snack_price] += 1 
    end
    i+=1   
  end 
  puts result 
end 
    
  snack_hash(vm)
  
  
  
  
  
  


