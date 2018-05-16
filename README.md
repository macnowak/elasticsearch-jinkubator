
### Sources of my presentation for WJUG talk about elasticsearch for beginners


To run samples :


1. Run docker-compose in docker dir 

		$ docker-compose up

2. Import all samples 
	
		$ ./samples/ex_import.sh
		
3. Check if everything is working 

		* Elastic -> http://localhost:9200
		* Kibana -> http://localhost:5601
		* Cerebro -> http://localhost:9000/
		* HQ -> http://localhost:5000/
		
	in Cerebro and HQ connect to `http://elasticsearch:9200`
		

To read presentation open:
	
	elasticsearch_for_beginners.pdf