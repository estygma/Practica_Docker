# Practica_Docker

Para correr los test del código en este repositorio, ejecutar de esta forma:

root@ip-172-31-32-252:/home/ubuntu/2_Test_Ejer7_Chat# sudo docker run -v $PWD:/home/ubuntu/2_Test_Ejer7_Chat evanesa/ubuntu_gcc_gtest_gmock /bin/bash -c "cd /home/ubuntu/2_Test_Ejer7_Chat && cmake . && make && ./ChatServiceTest > gtest_output.txt"

El resultado de los test se guardará en el fichero gtest_output.txt
root@ip-172-31-32-252:/home/ubuntu/2_Test_Ejer7_Chat# vi gtest_output.txt
Running main() from gmock_main.cc
[==========] Running 3 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 3 tests from ChatTest
[ RUN      ] ChatTest.AddUser
[       OK ] ChatTest.AddUser (0 ms)
[ RUN      ] ChatTest.RemoveUser
[       OK ] ChatTest.RemoveUser (0 ms)
[ RUN      ] ChatTest.SendMessage
[       OK ] ChatTest.SendMessage (0 ms)
[----------] 3 tests from ChatTest (0 ms total)

[----------] Global test environment tear-down
[==========] 3 tests from 1 test case ran. (0 ms total)
[  PASSED  ] 3 tests.
~                                                                                                                                                                                                            
~                                                                                                                                                                                                            
~                                                                                                                                                                                                            
~                                                                                                                                                                                                            
~                        
