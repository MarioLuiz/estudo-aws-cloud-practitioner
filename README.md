**Cloud Computing** 

Benefícios da Nuvem

1. Velocidade -> Soluções (Segundos)
2. Updates -> AWS (Sem interromper o serviço)
3. Custo -> Baixo custo
4. Data Security -> Backup
5. Escalabilidade - Scalability -> Pode ser Automática ou Manual em Segundos

**Tipos de Cloud**

IaaS -> InfraStructure as a service (Infraestrutura como um serviço) paga para utilizar a infraestrutura de alguém como um serviço.

PaaS -> Plataforma as a service (Plataforma como um serviço) paga para usar a plataforma como um serviço.

SaaS -> Software as a service (O software como um serviço)

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/c86121aa-e423-4245-9e56-52905a5d2323)


**Tipos de Redes na Nuvem**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/6a63e054-d879-4ee3-8e9d-9f6cc5688620)


**O que é um Serviço  ?** Qualquer coisa na nuvem que você possa: Iniciar, Configurar e Finalizar.

**Shared Responsability Model**  Modelo de responsabilidade compartilhada

AWS é responsável pela segurança da Cloud e O cliente é responsável pela segurança dentro da Nuvem  Para saber mais acesse: https://aws.amazon.com/pt/compliance/shared-responsibility-model/

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/c99994d5-0995-4ab2-b7b2-621f92953e44)


**Infraestrutura Global da AWS** 

Os serviços disponibilizados pela AWS são liberados por região, ou seja, temos que verificar quais serviços estão disponíveis na região em que você vai utilizar. no momento em 2023 AWS possui 31 regiões lançadas, 99 zonas de disponibilidade e mais de 450 pontos de presença, mais de 400 locais de borda e 13 caches da borda regionais.

**Regiões AWS**

Os nomes das regiões são dados conforme o pais e local onde elas estão localizadas Ex: us-east-2 (Significa que está região fica nos Estados Unidos na parte leste e é a 2 unidade nesta área)

**Zonas de Disponibilidade**  Dentro de cada região temos uma ou várias zonas de disponibilidades ( AZ ) que são os próprios Data Center.  

**Zonas Locais AWS**  Ficam próximas as Zonas de disponibilidades e conectadas a elas.

**AWS Wavelenght**

São servidores que ficam dentro de uma Operadora de Telefonia/Internet (TIM, CLARO, OI, VIVO) que tem conexão direta com as Zonas de Disponibilidade mais próxima.

**AWS OutSpots**

AWS coloca os equipamentos dela (Servidor) dentro de Data Centers de terceiros ou espaço de accommodation .

**IAM = Identity Access Management**

Recurso da AWS Servless que você tem privilégio ou não para iniciar/executar qualquer ação dentro da AWS, através dele você consegue criar/gerenciar: Usuarios, regras, Federed Users, Aplications, grupos.

**Tipos de Política**

IBP  = Identity Base Policy

RBP = Resource Base Policy

Quando um usuário é criado ele pode acessar sua conta (Console, CLI e API), mas vem sem privilégios, ou seja sem permissão.

Grupos são criados para organizar os usuários.

Roles podem ser aplicadas a serviços.

Police são regras onde você pode permitir acesso a determinado serviço a Grupos ou Usuários.

Todos os privilégios do usuário são descritos em Json, sempre que que um usuário pede/acessa determinado serviço 1 coisa a ser verificada é esse documento Json e quais os privilégios dele.

Usuário Logando via console é solicitado: nome, senha, MFA (Opcional).

Usuário Logando via CLI/API é solicitado: Acces Key ID, Secret Access key.

MFA =  Multi Factor Authentication

**Instancias EC2**

Virtualização na AWS é o EC2,

EC2 = Elastic Compute Cloud

A virtualização é uma técnica que permite a criação de uma máquina virtual para funcionar dentro do sistema de um PC/Servidor. O processo permite, por exemplo, a execução de sistemas operacionais completos ou uma simulação do comportamento do sistema para quem trabalha com desenvolvimento de software e testes de segurança.

**Scaling UP e Scaling OUT**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/f1833c8c-cf5f-4310-9090-53f4ba501a59)


Scaling UP aumenta os recusos de uma maquina EC2, memória, processamento e por ai vai.
Scaling OUT aumenta a quantidade de instancias EC2, ou seja, está aumentando a reduncancia.

**EC2 Auto Scaling**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/f8b47560-da9f-4ee8-9c5c-d670ee514ed1)


O EC2 Auto Scaling faz o gerenciamento de suas instancias EC2 conforme a necessidade, ou seja, ele adiciona ou remove instancias (Scaling OUT), conforme a performance de suas instancias, para isso é necessario criar primeiro um EC2 Launch templete, pois é com base nesse templete que ele cria suas replicas de instancia, depois temos que configurar o Auto Scaling group, pois atraves das configuraçoes realizadas no Auto Scaling group que será adicionado ou removida instancias, também podemos fazer essa configuração através do Amazon Cloud Watch.

**Scaling polices**

Existem dois tipos de Scaling polices:

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/baa26259-0a5c-4332-b671-387cef235dd9/Untitled.png)

- Target Tracking : Faz o scalonamento conforme o processamento da instancia EC2, uma a uma, ou seja ele sobe uma instancia por vez.
- Step / Simple Scaling :  Faz o scalonamento conforme o processamento da instancia EC2, dependendo do processamento requirido pode subir um lote de instancias EC2, duas ou mais.

**Vantagens do EC2**

- Controle Completo sobre a instancia, Ex: Aumentar memória, Aumentar Ram e etc (Scaling UP).

- Segurança

- AWS services : Acesso direto a todos outros serviços da AWS

- Low Cost: Baixo custo

- Unconplicated : muito facil criar instancias EC2

**Elastic** **Load Balancer**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/42ea7513-6f78-47b8-9298-5710148cd1c5)


São balenceadores de carga que, eles funcionam basicamente para redistribuir o trafego por serviços ou servidores dentro da AWS.
Basicamente existem 2 tipos de load balancers(Existiam 3, mas AWS diminuiu):

- ALB → Aplication Load Balancer (Layer 7 [OSI]) routing → Path Based / Hsot Based. você consegue apontar para : Intances, IP Addres, Lambda, Containers e targets. Geralmente usado quando se quer um Load balancer + Detalhado e inteligente.

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/45cc60e6-78ca-4689-9e90-d03602b328e2)


- NLB → Network Load balancer (Layer 4 [OSI]) routing → IP , TCP/UDP. Geralmente usado quando se quer um roteamento mais rapido: HP (Hyperformance) + LL (LowLatence)

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/5953d3a1-1ce1-456d-9eeb-75527b5850a7)


**User Data** 

User data é o código que você coloca para rodar apenas uma vez quando sua instância for iniciada,

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/1241b070-413e-416b-b1c9-3f64b79ff017)


**Acessando dados S3 via EC2**

1 Modo - Está maneira não é tão recomendada pois pode salva o acces key e secret do usuário IAM na máquina EC2, então se a máquina for invadida esses dados estarão visiveis.

Para configurar precisa acessar o pront de comando e colocar "aws configure" e colocar preencher com as informações.

2 Modo - Maneira recomendada Criar uma Role no IAM para EC2 de acesso ao S3 e depois ir nas instancias EC2, Selecionar a instancia > Acations > Security > Modify iam role, selecionar a role que criou.

**AWS Batch = LOTE/GRUPO**

Serviço da AWS que foi criado para rodar scripts em lotes/Grupos.

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/4fc1e466-5124-43eb-840a-f441f97ad533)


Você pode Criar um Job via Shell Scripts ou Docker images.  

**AWS LightSail = Navegar com facilidade**   
EC2 (Complexo) = LightSail (Simples)

**Dockers Containers**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/4ef07d4d-917e-40d2-9189-9865af5192ec)


**ECS = Elastic Container Server ( Docker )**

Task = Container

Registry = Docker Image (ECR = Elastic Container Registry)

ECS Service gerencia/ configura quantos containers  vão estar no ECS cluster e quais suas características

ECS Container instance é onde fica as configurações dos containers que são chamadas de Task Definition

Existem dois tipos de ECS

ECS EC2 Cluster (Você Gerencia)

ECS Fargate (ServerLess)

ECS Lunch

Nginx -> servidor Web = Container dentro do serviço de ECS

**Storage da Amazon**

**Simple Store Service** = S3
**Amazon Glacier** = Foi criado para archive, ou seja, para armazenar arquivos que não serão acessados por um longo espaço de tempo.
**EFS** = O Amazon Elastic File System (Amazon EFS) fornece armazenamento de arquivos totalmente elástico e sem servidor para que você possa compartilhar dados de arquivos sem provisionar ou gerenciar a capacidade e o desempenho do armazenamento. O Amazon EFS foi criado para ser dimensionado sob demanda para petabytes sem interromper os aplicativos, podendo aumentar ou diminuir à medida que você adiciona e remove arquivos. Como o Amazon EFS tem uma interface simples de serviços web, você pode criar e configurar sistemas de arquivos com rapidez e facilidade. O serviço gerencia toda a infraestrutura de armazenamento de arquivos para você, para que você evite a complexidade de implantar, corrigir e manter configurações complexas de sistemas de arquivos.

**SnowBall** 

**AWS Storage Gateway →** Serviço que permite que os servidores que estão dentro da sua empresa (on prommise) possam acessar o s3 na aws

**EBS (Elastic block storage)** = Instance Store for EC2

**Tipos de Storage por categorias**

Block Storage ( Arquivos que são guardados em formatos de blocos / Low Latency / DAS)

File Storage ( Dados armazenados para depois serem compartilhados 1 ou x users / NAS)

Object Storage ( Objetos / Meta Data)

**EBS (Elastic block storage)**

O Volume EBS é criado para que uma instancia EC2 possa acessá-lo, para isso os dois serviços tem que estar na mesma AZ (Avaliable Zone), para usar o EBS multi Attach ( tipo de disco IO 1) pode ser acessado por mais de uma instancia EC2 (Tipo Nitro).

Tipos de Volume EBS

Tipo SSD (Solid State drive) Rapido porem caro

Tipo HDD (Hard Disc Drive) Lento porem barato

Tipos de volumes são variados na AWS, olhe no link e veja todos os tipos de disco, pois cae na prova: https://aws.amazon.com/pt/ebs/volume-types/**SnapShot**

Como o próprio nome diz é uma foto tirada do disco, ou seja, um backup

**AMI (Amazon Machine Images)**

Existem 2 tipos de imagens (Public e Private)

**S3 (Amazon Simple Storage Service)**  
Primeiro serviço de armazenamento da Amazon, ele não possui limite de dados, um Buckut (Pasta)

O nome da buckut tem que ser unico universalmente, o objeto armazenado na Bucket pode ter de 0 a 5 Tb de tamanho. Aws garante durabilidade  e disponibilidade.

Conta FreeTier pode armazenar até 5Gb por 12 meses sem cobrar nada a mais.

**Definição de Preço do Amazon S3**  
Classes de Armazenamento S3 , para saber mais sobre os preços acesse: https://aws.amazon.com/pt/s3/pricing/ atualmente são 8 classes de armazenamento S3, é cobrado para mudar a classe de armazenamento, fique atento e

Consulte o s3 pricing para mais detalhes.

A classe de armazenamento está ligada ao arquivo dentro da sua bucket e não a Buckut em si, ou seja em uma Bucket pode ter diversos arquivos em diversas classes de armazenamento.

**Hospedar um site estático na S3**  
Criar uma Bucket na S3, depois colocar seu index.html nela, habilitar permissão de ACL do index.html para público e habilitar  acesso público no bucket.

**Ciclo de vida no S3**

No S3 a vários tipos de classe de armazenamento, o mais comum é que seus arquivos fiquem na classe padrão

(A mais cara das classes), podemos configurar ciclos de vida no s3 para que depois de um tempo a AWS mova esse arquivo para outro tipo de classe de armazenamento como uma IE ou Glacer por exemplo. Para acessar as regras é só selecionar o bucket > management > create lifecycle rule e configurar conforme a sua necessidade.

**Replicação de Bucket**

É possivel replicar os arquivos de uma bucket em uma determinada região para outra região, porem ambas as

Buckets tem que estar com versionamento habilitado, lembrando que é cobrado o valor de armazenamento de

Ambas as buckets. Para acessar as regras é só selecionar o bucket > management > create replication rule e configurar

conforme a sua necessidade.

**IAM polices no S3**

É possível criar polices para definir quem tera acesso ao seu bucket e é possivel fazer isso de várias formas :

IAM (aplica ao user), Bucket polices (aplica a bucket), Acces List.

**S3 Gracier**

Foi criado para archive, ou seja, para armazenar arquivos que não serão acessados por um longo espaço de tempo. Existem 2 classes de armazenamento:  S3 Glacier e o S3 Gracier deep archive. Neles podemos habilitar features para cada.

Tipo que são S3 Object Lock e S3 Glacier vault Lock que são utilizados quando você quer colocar o arquivo e ele não pode ser

Alterado por determinado tempo pré definido, nem o administrador pode alterar o arquivo nesse tempo.

**CloudFront**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/2c1a7130-2897-4aa4-9e15-a0a81dfdd64b)


O CloudFront é o serviço de CDN (Content Delivery Network) da AWS, lançado em 2008 em versão beta e implementado definitivamente em 2009.

Trata-se de uma solução de CDN que é utilizada principalmente por clientes da AWS pela comodidade de implementação e é encontrado normalmente dentro de aplicações web, como por exemplo em servidores EC2 e Buckets S3, com o intuito de entregar assets estáticos como .jpg, .png, .js, .css ou dinâmicos como .html e .json em cache para reduzir latência de entrega.

Normalmente, o CloudFront da AWS é implementado dentro de aplicações web que recebem tráfego de múltiplos países e que podem se beneficiar de uma cobertura em nível global. Além das questões de redução de latência, usuários CloudFront também se beneficiam pelo aumento de disponibilidade e escalabilidade que a CDN pode trazer, já que os elementos cacheados serão distribuídos por múltiplos pontos de distribuição, também conhecidos como *edge locations*.

**Vantagens do Cloud Front**

**Disponibilidade:** Conforme citamos no início deste artigo, o CloudFront pode aumentar a disponibilidade de uma aplicação, mas para isso é necessário que seja feita uma configuração de full cache, o que naturalmente exige algum esforço técnico de implementação.

**Latência:** É possível reduzir latência de entrega utilizando uma solução de CDN como CloudFront, porém é necessário lembrar que dentro do Brasil existem pontos de distribuição apenas no sudeste do país (São Paulo e Rio de Janeiro).

**Segurança:** Por padrão, a CDN lida com as requisições de uma aplicação trazendo ganhos em segurança, funcionando como um “escudo” contra ataques primários como DDoS. Além disso, é possível utilizar SSL/TLS para entrega.

**DNS**
DNS = Domain Name System

**Route53 (DNS da AWS)**
Route53 ele é muito mais que um DNS, ele pode monitorar 2 servidores de pagina web, caso 1 caia ele pode enviar o trafego para um outro, ou ele pode direcionar o usuario por geoproximidade para o servidor de web mais proximo ao usuário, ele pode fazer toda essa automatização, porem tem que ser configurado.

**Billing e Pricing**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/653ecc5c-6949-47b1-9eec-d10ad62774da)


AWS Philosophy

- Pay as you go (Você paga por aquilo que você usa)
- Pay for what you use
- Pay less as you use more
- Pay even less when you reserved

CAPEX (Capital Expenditure) Você paga antes de utilizar, valor fixo e bem mais caro

 VS 

OPEX (Operational Expenditure) Paga de acordo com o que você utiliza → AWS

**Budget vs Cost Explorer**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/8ee81353-db86-40d4-97ee-5ccb1e52d2c9)


- Budget = Orçamento (pode criar alerta de preço para quando chegar em um % x do valor que foi configurado)
- Cost Explorer = Depois (Relatório de billing) você pode ver o quanto foi gasto e onde foi gasto todos os valores da sua conta AWS

**AWS Plans**

Saiba mais em : 

[Comparação de planos do AWS Support | Developer, Business, Enterprise On-Ramp, Enterprise | AWS Support](https://aws.amazon.com/pt/premiumsupport/plans/)

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/12a19997-0609-4ee2-aa54-ef69a40b7f44)


Atualmente existem 4 tipos de planos de supporte na AWS:

- Developer: Tempo de resposta sistema afetado em menos de 12 horas** (8h as 18h),
Mais de 29 USD/mes
- Business: Tempo de resposta a sistema de produção inativo em menos de 1h,
Mais de 100 USD/mês
- Enterprise On-Ramp: Tempo de resposta sistema essencial ao negócio em menos de 30m,
Mais de USD 5.500/Mês
Assistencia a conta Equipe de suporte Concierge
Possui Um grupo de gerentes de contas técnicos para fornecer orientação proativa e coordenar o acesso a programas e especialistas da AWS
- Enterprise: Tempo de resposta mais curto sistema essencial ao negócio em menos de 15m,
mais de USD 15 mil 
Assistencia a conta Equipe de suporte Concierge
Unico plano que tem acesso Gerente de conta técnico (TAM) designado para monitorar proativamente o ambiente, auxiliar na otimização e coordenar o acesso a programas e especialistas da AWS

**AWS Organizations**

Esse é a forma que você tem de gerenciar o grupo de funcionarios/pessoas  que trabalham com a plataforma da AWS dentro da sua empresa. É a forma que a AWS disponibiliza para você segmentar os departamentos e consequentemente controlar a sua conta no final do mês.

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/41445451-660d-45bb-8764-bc6cabfd9cb8)


**AWS Cost Calculator**

Calculadora de preços da AWS, com ela podemos definir e prever custo estimado de quanto será o gasto por serviço da AWS (Mensalmente). 

[AWS Pricing Calculator](https://calculator.aws/#/)

**AWS Compliance**

A AWS possui diversas Certificações, para saber mais vá em https://aws.amazon.com/pt/compliance/programs/ 

seguindo as boas praticas da AWS você pode aplicar para essas mesmas certificações que ela possui.

Logando na conta AWS > Services > Security, Identity & Compliance > Artifact, lá teremos o view reports e você pode ver qual certificação você pode aplicar e o passo a passo conforme o relatório que ela manda.

**O QUE É O AWS ARTIFACT?**

O AWS Artifact, disponível no console, é um portal de autoatendimento para recuperação de artefatos de auditoria que oferece aos clientes acesso sob demanda à documentação de conformidade e aos acordos da AWS.

Você pode usar os relatórios do AWS Artifact para fazer download de documentos de segurança e conformidade, como os relatórios de certificações ISO, Payment Card Industry (PCI – Setor de cartões de pagamento) e Organization Control (SOC – Controles de sistema e organização).

Você pode usar o AWS Artifact Agreements para examinar, aceitar e acompanhar o status de acordos da AWS como o Business Associate Addendum (BAA – Adendo de associado comercial).

**AWS  ( Shared ) Responsability Model**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/30582edf-5b92-4539-b25e-502ffae0a06a)


AWS WAF (Web Application Firewell) vs Shield

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/09c5abd1-5f67-42bf-8cc8-9f8ef6a6709a)


WAF é utilizado para previnir ataques de Hacker via script, já o Shield é utilizado para previnir ataques DDos 

AWS Security Services

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/495f7c09-fb85-43f8-887e-82201888cde4)


- Inspector : Ele é um agente que pode ser instalado por exemplo em uma instancia EC2 e ele vai inspecionar todo ambiente e vai te falar o que está errado conforme os padroes de segurança e boas praticas.
- Trusted Advisor : Trabalha em tempo real ele vai ajudar a identificar toda a sua estrutura aws em todos os serviçoes que você está utilizando e vai te falar o que está errado conforme os padroes de segurança e boas praticas.
- Cloud Trail : Monitorar tudo que passa API Calls ou AWS console, ou seja, ele mostra qual usuario iniciou ou terminou determinado serviço da aws.

**O que é o Amazon Athena?**

O Amazon Athena é um serviço de consultas interativas que facilita a análise de dados no Amazon S3 usando SQL padrão. O Athena não usa servidor, de forma que não existe uma infraestrutura para configurar ou gerenciar; é possível começar a analisar os dados imediatamente. Não é necessário nem mesmo carregar dados no Athena, ele trabalha diretamente com os dados armazenados no S3. Para começar, basta fazer login no Athena Management Console, definir seu esquema e dar início às consultas. O Amazon Athena usa o Presto, com suporte completo a SQL padrão, e funciona com diversos formatos de dados padrão, como CSV, JSON, ORC, Apache Parquet e Avro. Apesar de o Amazon Athena ser ideal para queries rápidas ad hoc e se integrar com o Amazon QuickSight para facilidade de visualização, ele também consegue lidar com análise complexa, inclusive grandes junções, funções de janela e arrays.

**O que posso fazer com o Amazon Athena?**

O Amazon Athena ajuda você analisar os dados armazenados no Amazon S3. Você pode usar o Athena para rodar queries ad hoc usando SQL padrão ANSI, sem a necessidade de agregar ou carregar os dados no Athena. O Amazon Athena pode processar datasets desestruturados, semi-estruturados e estruturados. Os exemplos incluem formatos de dados CSV, JSON e Avro, além de formatos de dados colunares como Apache Parquet e Apache ORC. O Amazon Athena se integra com o Amazon QuickSight para facilidade de visualização. Você também pode usar o Amazon Athena para gerar relatórios ou explorar dados com ferramentas de inteligência de negócios ou clientes SQL conectados por meio de um driver [ODBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-odbc.html) ou [JDBC](http://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).

**O que é o Amazon Macie?**

O Amazon Macie é um serviço de segurança e privacidade de dados totalmente gerenciado que usa machine learning e correspondência de padrões para descobrir e proteger seus dados confidenciais na AWS.

**Quais são os principais benefícios do Amazon Macie?**

O Amazon Macie usa machine learning e correspondência de padrões para descobrir dados confidenciais em escala com eficiência de custos. O Macie detecta automaticamente uma lista grande e crescente de tipos de dados confidenciais, incluindo informações pessoalmente identificáveis (PII), como nomes, endereços e números de cartão de crédito. Também oferece visibilidade constante da segurança e privacidade de seus dados armazenados no Amazon S3. É fácil configurar o Macie com um clique no Console de Gerenciamento da AWS ou com uma chamada de API única. O Macie fornece suporte para diversas contas usando o AWS Organizations, para que você possa habilitar o Macie em todas as suas contas com alguns cliques.

**Athena vs Macie**

![image](https://github.com/MarioLuiz/estudo-aws-cloud-practitioner/assets/11471499/ff91d18b-3078-413d-a85e-b207ee4772e5)


Usado por quem trabalha com armazenamento de dados em Bucket S3.

Athena puxa informaçoes dentro do S3 utilizando sql
Macie puxa informaçoes dentro do S3 utilizando machine learning NLP (Natural language processing), muito utilizado com quem trabalha com PII.

**CloudFormation**
Serviço da AWS que permite subir outros serviços da AWS (EC2, Bucket S3, Load Balancer, Elast IP, Route53 …) apenas criando um script (Template [YAML] [JSON]) que nele você dita o que sera feito e as configuraçoes, que automaticamante ele segue seu scrip.
