myArray = ['a','b','c','d','d','c','b','c']
tArreglo = len(myArray)

if tArreglo%2 == 0:                  # VALIDAR SI EL NUMERO DE ELEMENTOS DE LA LISTA ES PAR O IMPAR.
    if tArreglo >1 or tArreglo ==10: # CONFIRMAR RANGO ENTRE 1 Y 10.
        if myArray[0] == myArray[7] and myArray[1] == myArray[6] and myArray[2] == myArray[5] and myArray[3] == myArray[4]:
            print('Symmetric')
        else:
            print('Asymmetric')
    else:
        print('Asymmetric')
else:
    print('Asymmetric')