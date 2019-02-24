# controlvnet
Repositório de Métodos e Ferramentas - Análise de Controlabilidade em Redes Complexas

Aqui são descritas as Ferramentas e Passos para identificação de nós de controle em redes veiculares. 

Cenários:

- Vehicular Mobility Trace of the City of Cologne, Germany (TAPASCologne) - http://kolntrace.project.citi-lab.fr/
- Madrid Traces (A6 e M40) - http://www.it.uc3m.es/madrid-traces/
- Microscopic vehicular mobility trace of Europarc roundabout, Creteil, Francehttp://vehicular-mobility-trace.github.io/

Ferramentas Utilizadas:

    - Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz, 8GB de RAM (Hardware Utilizado);
    
    - Linux Ubuntu 16.04.3 64bits;
    
    - Python 2.7;
    
    - RStudio;
    
    - Igraph;
    
    - Netctrl de Nepusz2012 pré-compilado para Linux 64 bits (https://github.com/ntamas/netctrl);
    
    - Cytoscape;
    
    - SUMO - Simulation of Urban MObility;
    
    - NS2 - Network Simulator. 
     

Mapeamento - Etapa 1

- Após realizar do download dos cenários utilize o algoritmo de pré-processamento pre-process.py para realizar o mapeamento.

- Indique o intervalo de tempo que compreenderá o tempo da simulação. 

- O algoritmo de pré-processamento está comentado, nele você poderá configurar o raio de comunicação e o intervalo de tempo desejado.

Fragmentação - Etapa 2

- Na etapa 1 será gerado um arquivo com a seguinte característica:

1035 2310 1 1

1023 2310 1 1

1013 2310 1 1

1054 2310 1 1

     ...
     
1056 2310 1 1

1013 2310 1 1


-  A primeira coluna as duas primeiras colunas se referem ao elementos da rede que possuem relação entre si, as duas últimas
colunas se referem ao momento (linha do tempo).

- Utilize o algoritmo frag.r para realizar a fragmentação, o algoritmo irá considerar o momento (linha do tempo) para 
fragmentar o primeiro arquivo em quantos momentos você desejar, basta configurar no arquivo;

Execução do algoritmo de Controlabilidade de Liu - Etapa 3:

- Na etapa 2 serão gerados vários arquivos, cada arquivo representa um grafo para cada tempo que se deseja analisar na rede;

- Neste momento execute o script em shell (bash) controllability_auto.sh, este script automatiza a execução do algoritmo de 
Controlabilidade de Liu (NetCtrl) em todos os grafos de uma só vez.

Neste repositório você encontrará todos os scripts e algoritmos assim como as bases de dados utilizadas para o estudo.
