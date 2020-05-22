FactoryBot.define do
  factory :stable do
    title {"Test-beya"}
    ichimon {"Test-ichimon"}
    founded {"2020"}
    address {"123 test address"}
    address_jp {"123 試験住所、市、州、日本"}
    phone {"0-123456-789"}
    closest_stations {"Test Station, Test Stop"}
    website {"wwww.teststablewebsite.com"}
    hexcolor {"#1107bd"}
    description {"It was a pleasure to burn. It was a special pleasure to see things eaten, to see things blackened and changed."}
    lon {9.5555}
    lat {139.8888}
    other_info {"With his symbolic helmet numbered 451 on his solid head, and his eyes all orange flame with the thought of what came next, he flicked the igniter and the house jumped up in a gorging fire that burned the evening sky red and yellow and black. He strode in a swarm of fireflies."}
  end

  factory :term do
    english_name {"Test-Term"}
    japanese_name {"試験期間"}
    definition {"It was not the wife; it was the children, groaned the prisoner. God help me, I would not have them ashamed of their father. My God! What an exposure! What can I do? Sherlock Holmes sat down beside him on the couch and patted him kindly on the shoulder."}
  end

  factory :sumo do 
    name {"Testsumo"}
    heya {"Test-beya"}
    full_name {"Testsumo Sho"}
    ring_name {"Testsumo Ringname"}
    rank {"Yokozuna"}
    date_of_birth {"January 5"}
    year_of_birth {"1988"}
    place_of_birth {"Tokyo"}
    height {"192.0cm"}
    weight {"151.0kg"}
    favorite_techniques {"migi-yotsu/yori"}
  end
end
