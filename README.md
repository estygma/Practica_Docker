# Practica_Docker

Para correr los test del código en este repositorio, ejecutar de esta forma:

root@ip-172-31-32-252:/home/ubuntu/2_Test_Ejer7_Chat# sudo docker run -v $PWD:/home/ubuntu/2_Test_Ejer7_Chat evanesa/ubuntu_gcc_gtest_gmock /bin/bash -c "cd /home/ubuntu/2_Test_Ejer7_Chat && cmake . && make && ./ChatServiceTest > gtest_output.txt"

El resultado de los test se guardará en el fichero gtest_output.txt
                                                                                                                                
