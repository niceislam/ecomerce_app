import 'package:flutter/material.dart';

class shoeDatabase {
  List ShoeData = [
    {
      "image":
          "https://medex.com.bd/storage/images/packaging/napa-500-mg-tablet-95324450053-i1-jtmMTho0xPmKADM1kMTq.jpg",
      "name": "Paracetamol 500mg",
      "regularPrice": "5.00",
      "price": "4.50",
      "details":
          "A common pain reliever and fever reducer. Used to treat headaches, muscle aches, arthritis, backaches, toothaches, colds, and fevers.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2024/6/428151200/RA/HT/RE/10319247/cefixime-dispersible-tablets-500x500.jpeg",
      "name": "Ibuprofen 200mg",
      "regularPrice": "7.50",
      "price": "6.80",
      "details":
          "A nonsteroidal anti-inflammatory drug (NSAID) used for treating pain, fever, and inflammation. Common uses include headaches, menstrual cramps, and arthritis.",
    },
    {
      "image":
          "https://tiimg.tistatic.com/fp/1/007/719/diclofenac-25mg-tablets-10x10-pack-862.jpg",
      "name": "Amoxicillin 250mg",
      "regularPrice": "12.00",
      "price": "10.50",
      "details":
          "An antibiotic used to treat a wide variety of bacterial infections. It is a penicillin-type antibiotic.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2024/12/477401476/GX/WI/RH/4619647/mefenamic-acid-drotaverine-tablet-500x500.jpg",
      "name": "Omeprazole 20mg",
      "regularPrice": "15.00",
      "price": "13.50",
      "details":
          "A proton pump inhibitor (PPI) that decreases the amount of acid produced in the stomach. Used to treat heartburn, acid reflux, and ulcers.",
    },
    {
      "image": "https://c8.alamy.com/comp/JBF5HK/open-medicine-packet-labelled-happiness-opened-at-one-end-to-display-JBF5HK.jpg",
      "name": "Loratadine 10mg",
      "regularPrice": "9.00",
      "price": "8.10",
      "details":
          "An antihistamine used to relieve allergy symptoms such as sneezing, runny nose, watery eyes, and itching.",
    },
    {
      "image":
          "https://c8.alamy.com/comp/JBF5HK/open-medicine-packet-labelled-happiness-opened-at-one-end-to-display-JBF5HK.jpg",
      "name": "Cetirizine 10mg",
      "regularPrice": "8.50",
      "price": "7.60",
      "details":
          "Another antihistamine used to treat hay fever, seasonal allergies, and hives.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2022/8/LY/EN/KS/8396705/hifenac-p-tablet-500x500.jpeg",
      "name": "Metformin 500mg",
      "regularPrice": "20.00",
      "price": "18.00",
      "details":
          "An oral diabetes medicine that helps control blood sugar levels. Used in combination with diet and exercise to treat type 2 diabetes.",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvvrcoPRmxaoAQrL-qDJeyT8duNBJGL6r0lg&s",
      "name": "Aspirin 81mg",
      "regularPrice": "6.00",
      "price": "5.40",
      "details":
          "A salicylate (NSAID) used to reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, colds, and headaches.",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR2p6ddW3zK2asfX2uZwq8t3UF3pTKNANEhw&s",
      "name": "Dextromethorphan HBr",
      "regularPrice": "10.00",
      "price": "9.00",
      "details":
          "A cough suppressant used to treat a cough caused by the common cold, flu, or other conditions.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2025/7/526556503/RU/LE/LK/242398460/sleepose-3-mg-tablets-500x500.jpeg",
      "name": "Simvastatin 20mg",
      "regularPrice": "25.00",
      "price": "22.50",
      "details":
          "A statin used to lower cholesterol and triglycerides in the blood.",
    },
    {
      "image":
          "https://medex.com.bd/storage/images/packaging/napa-500-mg-tablet-95324450053-i1-jtmMTho0xPmKADM1kMTq.jpg",
      "name": "Paracetamol 500mg",
      "regularPrice": "5.00",
      "price": "4.50",
      "details":
          "A common pain reliever and fever reducer. Used to treat headaches, muscle aches, arthritis, backaches, toothaches, colds, and fevers.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2024/6/428151200/RA/HT/RE/10319247/cefixime-dispersible-tablets-500x500.jpeg",
      "name": "Ibuprofen 200mg",
      "regularPrice": "7.50",
      "price": "6.80",
      "details":
          "A nonsteroidal anti-inflammatory drug (NSAID) used for treating pain, fever, and inflammation. Common uses include headaches, menstrual cramps, and arthritis.",
    },
    {
      "image":
          "https://tiimg.tistatic.com/fp/1/007/719/diclofenac-25mg-tablets-10x10-pack-862.jpg",
      "name": "Amoxicillin 250mg",
      "regularPrice": "12.00",
      "price": "10.50",
      "details":
          "An antibiotic used to treat a wide variety of bacterial infections. It is a penicillin-type antibiotic.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2024/12/477401476/GX/WI/RH/4619647/mefenamic-acid-drotaverine-tablet-500x500.jpg",
      "name": "Omeprazole 20mg",
      "regularPrice": "15.00",
      "price": "13.50",
      "details":
          "A proton pump inhibitor (PPI) that decreases the amount of acid produced in the stomach. Used to treat heartburn, acid reflux, and ulcers.",
    },
    {
      "image": "https://5.imimg.com/data5/SELLER/Default/2024/12/477401476/GX/WI/RH/4619647/mefenamic-acid-drotaverine-tablet-500x500.jpg",
      "name": "Loratadine 10mg",
      "regularPrice": "9.00",
      "price": "8.10",
      "details":
          "An antihistamine used to relieve allergy symptoms such as sneezing, runny nose, watery eyes, and itching.",
    },
    {
      "image":
          "https://c8.alamy.com/comp/JBF5HK/open-medicine-packet-labelled-happiness-opened-at-one-end-to-display-JBF5HK.jpg",
      "name": "Cetirizine 10mg",
      "regularPrice": "8.50",
      "price": "7.60",
      "details":
          "Another antihistamine used to treat hay fever, seasonal allergies, and hives.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2022/8/LY/EN/KS/8396705/hifenac-p-tablet-500x500.jpeg",
      "name": "Metformin 500mg",
      "regularPrice": "20.00",
      "price": "18.00",
      "details":
          "An oral diabetes medicine that helps control blood sugar levels. Used in combination with diet and exercise to treat type 2 diabetes.",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvvrcoPRmxaoAQrL-qDJeyT8duNBJGL6r0lg&s",
      "name": "Aspirin 81mg",
      "regularPrice": "6.00",
      "price": "5.40",
      "details":
          "A salicylate (NSAID) used to reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, colds, and headaches.",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR2p6ddW3zK2asfX2uZwq8t3UF3pTKNANEhw&s",
      "name": "Dextromethorphan HBr",
      "regularPrice": "10.00",
      "price": "9.00",
      "details":
          "A cough suppressant used to treat a cough caused by the common cold, flu, or other conditions.",
    },
    {
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2025/7/526556503/RU/LE/LK/242398460/sleepose-3-mg-tablets-500x500.jpeg",
      "name": "Simvastatin 20mg",
      "regularPrice": "25.00",
      "price": "22.50",
      "details":
          "A statin used to lower cholesterol and triglycerides in the blood.",
    },
  ];
}
