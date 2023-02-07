import random
while True:
    try:
        Rand = random.randint(1,10)
        Numb = int(input("Tahmin: "))
        if Numb == 99:
            print("Programdan Çıkış Sağlanıyor...")
            break
        if Numb <= 10 and Numb > 0:
            if Numb == Rand:
                print("Bildin | Doğru Tahmin:", Rand)
            else:
                print("Bilemedin | Doğru Tahmin:", Rand)
        else:
            print("Hata: Tahminin 10 İla 1 Arasında Olmalı.")                    
    except:
        print("Hata: Yalnızca Sayı Yazınız.")                          
