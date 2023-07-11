flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = []
barney.push(flintstones.key(2))
barney.push(flintstones["Barney"])

p barney

p flintstones.assoc("Barney")
