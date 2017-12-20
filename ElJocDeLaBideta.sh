#!/bin/bash
#FUNCTIONS
MENU () {
clear
	echo "                                                         
 _ _ _     _                      _          _   _       
| | | |___| |___ ___ _____ ___   | |_ ___   | |_| |_ ___ 
| | | | -_| |  _| . |     | -_|  |  _| . |  |  _|   | -_|
|_____|___|_|___|___|_|_|_|___|  |_| |___|  |_| |_|_|___|
                                                         
                                                _        
 _____     _        _____                      | |       
|   __|___|_|___   |     |___ ___ _ _ _ ___ _ _|_|___    
|   __| . | |  _|  |   --| . |   | | | | .'| | | |_ -|   
|_____|  _|_|___|  |_____|___|_|_|_____|__,|_  | |___|   
      |_|                                  |___|         
                                                         
 _____                  _____ ___    __    _ ___         
|   __|___ _____ ___   |     |  _|  |  |  |_|  _|___     
|  |  | .'|     | -_|  |  |  |  _|  |  |__| |  _| -_|    
|_____|__,|_|_|_|___|  |_____|_|    |_____|_|_| |___|    
                                                         "
sleep 2
clear
echo " ____                        _                               
|    \ ___    _ _ ___ _ _   | |_ ___ ___ _ _ _               
|  |  | . |  | | | . | | |  | '_|   | . | | | |              
|____/|___|  |_  |___|___|  |_,_|_|_|___|_____|              
             |___|                                           
                                                             
 _                _ _ ___                      _             
| |_ ___ _ _ _   | |_|  _|___    _ _ _ ___ ___| |_ ___       
|   | . | | | |  | | |  _| -_|  | | | | . |  _| '_|_ -|      
|_|_|___|_____|  |_|_|_| |___|  |_____|___|_| |_,_|___|      
                                                             
                                                       _____ 
 _        _   _   _                _                  |___  |
|_|___   | |_| |_|_|___    _ _ ___|_|_ _ ___ ___ ___ ___|  _|
| |   |  |  _|   | |_ -|  | | |   | | | | -_|  _|_ -| -_|_|  
|_|_|_|  |_| |_|_|_|___|  |___|_|_|_|\_/|___|_| |___|___|_|  
                                                             "

while true
do
	read -e -n 1 -p "[S/N]: " tutorial
	case $tutorial in
		S)
			tutorial=1
			break
		;;
		s)
			tutorial=1
			break
		;;
		n)
			tutorial=0
			break
		;;
		N)
			tutorial=0
			break
		;;
		*)
			echo "Try again..."
			sleep 0.5
		;;
	esac
done

if [ $tutorial -eq 0 ]
then
	TUTORIAL
fi

echo "How many cellsxcells do you want to have in your universe?"

read -p "X cells: " tamanyMapaX
read -p "Y cells: " tamanyMapaY
let tamanyMapaXB=$tamanyMapaX+1

echo "How many time do you want to wait between generations? Example: 0.3"
	read -e -n 3 -p "Time: " temps

echo "Do you want a random world or a handmade world by you?"
		
while true
do
read -e -n 1 -p "[R/H]: " world
	case $world in
		R)
			world=1
			break
		;;
		r)
			world=1
			break
		;;
		h)
			world=0
			break
		;;
		H)
			world=0
			break
		;;
		*)
			echo "Try again..."
			sleep 0.5
		;;
	esac
done
}

GENERAR_MAPA () {
	echo "function miau () { " > GenerarMapa.txt
	for e in `seq $tamanyMapaY`
	do
		echo -n "mapa$e=( " >> GenerarMapa.txt
		for n in `seq $tamanyMapaX`
		do
			echo -n "⬜ " >> GenerarMapa.txt
		done
		echo ")" >> GenerarMapa.txt
	done
	echo "}" >> GenerarMapa.txt
}


TUTORIAL () {
	echo "   
Use the arrows to move up and down.	                                                                         
 _____ _                  _                            ___                  
|_   _| |_ ___    _ _ ___|_|_ _ ___ ___ ___ ___    ___|  _|                 
  | | |   | -_|  | | |   | | | | -_|  _|_ -| -_|  | . |  _|                 
  |_| |_|_|___|  |___|_|_|_|\_/|___|_| |___|___|  |___|_|                   
                                                                            
                                                                            
   _   _          _____                      ___    __    _ ___             
  | |_| |_ ___   |   __|___ _____ ___    ___|  _|  |  |  |_|  _|___         
  |  _|   | -_|  |  |  | .'|     | -_|  | . |  _|  |  |__| |  _| -_|        
  |_| |_|_|___|  |_____|__,|_|_|_|___|  |___|_|    |_____|_|_| |___|        
                                                                            
                                                                            
 _                   _     ___ _     _ _                                    
|_|___    ___ ___   |_|___|  _|_|___|_| |_ ___                              
| |_ -|  | .'|   |  | |   |  _| |   | |  _| -_|                             
|_|___|  |__,|_|_|  |_|_|_|_| |_|_|_|_|_| |___|                             
                                                                            
                                                                            
 _                   _ _                   _             _                  
| |_ _ _ _ ___ ___ _| |_|_____ ___ ___ ___|_|___ ___ ___| |                 
|  _| | | | . |___| . | |     | -_|   |_ -| | . |   | .'| |                 
|_| |_____|___|   |___|_|_|_|_|___|_|_|___|_|___|_|_|__,|_|                 
                                                                            
                                                                            
         _   _                       _            _   _                     
 ___ ___| |_| |_ ___ ___ ___ ___ ___| |   ___ ___|_|_| |                    
| . |  _|  _|   | . | . | . |   | .'| |  | . |  _| | . |                    
|___|_| |_| |_|_|___|_  |___|_|_|__,|_|  |_  |_| |_|___|                    
                    |___|                |___|                              
                                                                            
     ___                                       _ _                      _   
 ___|  _|   ___ ___ _ _ ___ ___ ___    ___ ___| | |___      ___ ___ ___| |_ 
| . |  _|  |_ -| . | | | .'|  _| -_|  |  _| -_| | |_ -|_   | -_| .'|  _|   |
|___|_|    |___|_  |___|__,|_| |___|  |___|___|_|_|___| |  |___|__,|___|_|_|
                 |_|                                  |_|                   
                                                                            
     ___          _   _     _      _        _                       ___     
 ___|  _|   _ _ _| |_|_|___| |_   |_|___   |_|___    ___ ___    ___|  _|    
| . |  _|  | | | |   | |  _|   |  | |_ -|  | |   |  | . |   |  | . |  _|    
|___|_|    |_____|_|_|_|___|_|_|  |_|___|  |_|_|_|  |___|_|_|  |___|_|      
                                                                            
                                                                            
 _                                _ _   _            _       _              
| |_ _ _ _ ___    ___ ___ ___ ___|_| |_| |___    ___| |_ ___| |_ ___ ___    
|  _| | | | . |  | . | . |_ -|_ -| | . | | -_|  |_ -|  _| .'|  _| -_|_ -|_  
|_| |_____|___|  |  _|___|___|___|_|___|_|___|  |___|_| |__,|_| |___|___| | 
                 |_|                                                    |_| 
                                                                            
     _ _                         _           _                              
 ___| |_|_ _ ___    ___ ___    _| |___ ___ _| |                             
| .'| | | | | -_|  | . |  _|  | . | -_| .'| . |_                            
|__,|_|_|\_/|___|  |___|_|    |___|___|__,|___|_|                           
                                                                            





                                                              
 _____                            _ _    _     _                   _                
|   __|_ _ ___ ___ _ _    ___ ___| | |  |_|___| |_ ___ ___ ___ ___| |_ ___          
|   __| | | -_|  _| | |  |  _| -_| | |  | |   |  _| -_|  _| .'|  _|  _|_ -|         
|_____|\_/|___|_| |_  |  |___|___|_|_|  |_|_|_|_| |___|_| |__,|___|_| |___|         
                  |___|                                                             
                                                                                    
       _ _   _      _ _              _     _   _                                    
 _ _ _|_| |_| |_   |_| |_ ___    ___|_|___| |_| |_                                  
| | | | |  _|   |  | |  _|_ -|  | -_| | . |   |  _|                                 
|_____|_|_| |_|_|  |_|_| |___|  |___|_|_  |_|_|_|                                   
                                      |___|                                         
                                                                                    
         _     _   _                              _   _     _                       
 ___ ___|_|___| |_| |_ ___ _ _ ___ ___      _ _ _| |_|_|___| |_    ___ ___ ___      
|   | -_| | . |   | . | . | | |  _|_ -|_   | | | |   | |  _|   |  | .'|  _| -_|     
|_|_|___|_|_  |_|_|___|___|___|_| |___| |  |_____|_|_|_|___|_|_|  |__,|_| |___|     
          |___|                       |_|                                           
                                                                                    
 _   _                  _ _        _   _       _                                    
| |_| |_ ___    ___ ___| | |___   | |_| |_ ___| |_    ___ ___ ___                   
|  _|   | -_|  |  _| -_| | |_ -|  |  _|   | .'|  _|  | .'|  _| -_|                  
|_| |_|_|___|  |___|___|_|_|___|  |_| |_|_|__,|_|    |__,|_| |___|                  
                                                                                    
                                                                                    
 _           _             _       _ _                      _   _         _ _       
| |_ ___ ___|_|___ ___ ___| |_ ___| | |_ _      _ _ ___ ___| |_|_|___ ___| | |_ _   
|   | . |  _| |- _| . |   |  _| .'| | | | |_   | | | -_|  _|  _| |  _| .'| | | | |_ 
|_|_|___|_| |_|___|___|_|_|_| |__,|_|_|_  | |   \_/|___|_| |_| |_|___|__,|_|_|_  | |
                                      |___|_|                                |___|_|
                                                                                    
              _ _                     _ _              _   _                 _      
 ___ ___    _| |_|___ ___ ___ ___ ___| | |_ _    ___ _| | |_|___ ___ ___ ___| |_    
| . |  _|  | . | | .'| . | . |   | .'| | | | |  | .'| . | | | .'|  _| -_|   |  _|_  
|___|_|    |___|_|__,|_  |___|_|_|__,|_|_|_  |  |__,|___|_| |__,|___|___|_|_|_| |_| 
                     |___|               |___|          |___|                       
                                                                                    
 _____ _                  _          _              _        _   _                  
|  _  | |_    ___ ___ ___| |_    ___| |_ ___ ___   |_|___   | |_|_|_____ ___        
|     |  _|  | -_| .'|  _|   |  |_ -|  _| -_| . |  | |   |  |  _| |     | -_|       
|__|__|_|    |___|__,|___|_|_|  |___|_| |___|  _|  |_|_|_|  |_| |_|_|_|_|___|       
                                            |_|                                     
   _                                       _                                        
 _|_|                        _   _        |_|_      _   _                           
| |  ___ ___ ___ ___ ___ ___| |_|_|___ ___  | |    | |_| |_ ___                     
| | | . | -_|   | -_|  _| .'|  _| | . |   | | |_   |  _|   | -_|                    
|_|_|_  |___|_|_|___|_| |__,|_| |_|___|_|_|_|_| |  |_| |_|_|___|                    
  |_|___|                                 |_| |_|                                   
                                                                                    
 ___     _ _           _            _                   _ _   _                     
|  _|___| | |___ _ _ _|_|___ ___   | |_ ___ ___ ___ ___|_| |_|_|___ ___ ___         
|  _| . | | | . | | | | |   | . |  |  _|  _| .'|   |_ -| |  _| | . |   |_ -|        
|_| |___|_|_|___|_____|_|_|_|_  |  |_| |_| |__,|_|_|___|_|_| |_|___|_|_|___|        
                            |___|                                                   
                                                                                    
                                                                                    
 ___ ___ ___ _ _ ___                                                                
| . |  _|  _| | |  _|_                                                              
|___|___|___|___|_| |_|                                                             
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
       _                                                                            
 ___  |_|_    _____            _ _                        _ _                       
|_  |   | |  |  _  |___ _ _   | |_|___ _ _ ___    ___ ___| | |                      
 _| |_  | |  |     |   | | |  | | |  _| | | -_|  |  _| -_| | |                      
|_____|_|_|  |__|__|_|_|_  |  |_|_|___|\_/|___|  |___|___|_|_|                      
      |_|              |___|                                                        
                                                                                    
       _ _   _      ___                      _   _                                  
 _ _ _|_| |_| |_   |  _|___ _ _ _ ___ ___   | |_| |_ ___ ___                        
| | | | |  _|   |  |  _| -_| | | | -_|  _|  |  _|   | .'|   |                       
|_____|_|_| |_|_|  |_| |___|_____|___|_|    |_| |_|_|__,|_|_|                       
                                                                                    
                                                                                    
 _                _ _                    _     _   _                                
| |_ _ _ _ ___   | |_|_ _ ___    ___ ___|_|___| |_| |_ ___ _ _ ___ ___              
|  _| | | | . |  | | | | | -_|  |   | -_| | . |   | . | . | | |  _|_ -|             
|_| |_____|___|  |_|_|\_/|___|  |_|_|___|_|_  |_|_|___|___|___|_| |___|             
                                          |___|                                     
                                                                                    
   _ _                         _ ___                          _                     
 _| |_|___ ___      ___ ___   |_|  _|   ___ ___ _ _ ___ ___ _| |                    
| . | | -_|_ -|_   | .'|_ -|  | |  _|  |  _| .'| | |_ -| -_| . |                    
|___|_|___|___| |  |__,|___|  |_|_|    |___|__,|___|___|___|___|                    
              |_|                                                                   
                                                                                    
 _                    _                             _     _   _                     
| |_ _ _    _ _ ___ _| |___ ___ ___ ___ ___ ___ _ _| |___| |_|_|___ ___             
| . | | |  | | |   | . | -_|  _|___| . | . | . | | | | .'|  _| | . |   |_           
|___|_  |  |___|_|_|___|___|_|     |  _|___|  _|___|_|__,|_| |_|___|_|_|_|          
    |___|                          |_|     |_|                                      
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
     _                                                                              
 ___|_|_    _____            _ _                    _ _                             
|_  | | |  |  _  |___ _ _   | |_|_ _ ___    ___ ___| | |                            
|  _| | |  |     |   | | |  | | | | | -_|  |  _| -_| | |                            
|___|_|_|  |__|__|_|_|_  |  |_|_|\_/|___|  |___|___|_|_|                            
    |_|              |___|                                                          
                                                                                    
       _ _   _      _                           _   _                               
 _ _ _|_| |_| |_   | |_ _ _ _ ___    ___ ___   | |_| |_ ___ ___ ___                 
| | | | |  _|   |  |  _| | | | . |  | . |  _|  |  _|   |  _| -_| -_|                
|_____|_|_| |_|_|  |_| |_____|___|  |___|_|    |_| |_|_|_| |___|___|                
                                                                                    
                                                                                    
 _ _                    _     _   _                                                 
| |_|_ _ ___    ___ ___|_|___| |_| |_ ___ _ _ ___ ___                               
| | | | | -_|  |   | -_| | . |   | . | . | | |  _|_ -|                              
|_|_|\_/|___|  |_|_|___|_|_  |_|_|___|___|___|_| |___|                              
                         |___|                                                      
                                                                                    
 _ _                           _          _   _                                     
| |_|_ _ ___ ___    ___ ___   | |_ ___   | |_| |_ ___                               
| | | | | -_|_ -|  | . |   |  |  _| . |  |  _|   | -_|                              
|_|_|\_/|___|___|  |___|_|_|  |_| |___|  |_| |_|_|___|                              
                                                                                    
                                                                                    
             _                              _   _                                   
 ___ ___ _ _| |_    ___ ___ ___ ___ ___ ___| |_|_|___ ___                           
|   | -_|_'_|  _|  | . | -_|   | -_|  _| .'|  _| | . |   |_                         
|_|_|___|_,_|_|    |_  |___|_|_|___|_| |__,|_| |_|___|_|_|_|                        
                   |___|                                                            
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
     _                                                                              
 ___|_|_    _____            _ _                    _ _                             
|_  | | |  |  _  |___ _ _   | |_|_ _ ___    ___ ___| | |                            
|_  | | |  |     |   | | |  | | | | | -_|  |  _| -_| | |                            
|___|_|_|  |__|__|_|_|_  |  |_|_|\_/|___|  |___|___|_|_|                            
    |_|              |___|                                                          
                                                                                    
       _ _   _                           _   _                                      
 _ _ _|_| |_| |_    _____ ___ ___ ___   | |_| |_ ___ ___                            
| | | | |  _|   |  |     | . |  _| -_|  |  _|   | .'|   |                           
|_____|_|_| |_|_|  |_|_|_|___|_| |___|  |_| |_|_|__,|_|_|                           
                                                                                    
                                                                                    
 _   _                  _ _                                                         
| |_| |_ ___ ___ ___   | |_|_ _ ___                                                 
|  _|   |  _| -_| -_|  | | | | | -_|                                                
|_| |_|_|_| |___|___|  |_|_|\_/|___|                                                
                                                                                    
                                                                                    
         _     _   _                        _ _                                     
 ___ ___|_|___| |_| |_ ___ _ _ ___ ___    _| |_|___ ___      ___ ___                
|   | -_| | . |   | . | . | | |  _|_ -|  | . | | -_|_ -|_   | .'|_ -|               
|_|_|___|_|_  |_|_|___|___|___|_| |___|  |___|_|___|___| |  |__,|___|               
          |___|                                        |_|                          
                                                                                    
 _ ___    _                                              _ _                        
|_|  _|  | |_ _ _    ___ _ _ ___ ___ ___ ___ ___ _ _ _ _| |_|___ ___                
| |  _|  | . | | |  | . | | | -_|  _|  _|  _| . | | | | . | |   | . |_              
|_|_|    |___|_  |  |___|\_/|___|_| |___|_| |___|_____|___|_|_|_|_  |_|             
             |___|                                              |___|               
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
     _                                                                              
 ___|_|_    _____              _           _            _ _                         
| | | | |  |  _  |___ _ _    _| |___ ___ _| |   ___ ___| | |                        
|_  | | |  |     |   | | |  | . | -_| .'| . |  |  _| -_| | |                        
  |_|_|_|  |__|__|_|_|_  |  |___|___|__,|___|  |___|___|_|_|                        
    |_|              |___|                                                          
                                                                                    
       _ _   _                      _   _        _   _                              
 _ _ _|_| |_| |_    ___ _ _ ___ ___| |_| |_ _   | |_| |_ ___ ___ ___                
| | | | |  _|   |  | -_|_'_| .'|  _|  _| | | |  |  _|   |  _| -_| -_|               
|_____|_|_| |_|_|  |___|_,_|__,|___|_| |_|_  |  |_| |_|_|_| |___|___|               
                                         |___|                                      
                                                                                    
 _ _                    _     _   _                                                 
| |_|_ _ ___    ___ ___|_|___| |_| |_ ___ _ _ ___ ___                               
| | | | | -_|  |   | -_| | . |   | . | . | | |  _|_ -|                              
|_|_|\_/|___|  |_|_|___|_|_  |_|_|___|___|___|_| |___|                              
                         |___|                                                      
                                                                                    
 _                                       _ _                    _ _                 
| |_ ___ ___ ___ _____ ___ ___    ___   | |_|_ _ ___    ___ ___| | |                
| . | -_|  _| . |     | -_|_ -|  | .'|  | | | | | -_|  |  _| -_| | |_               
|___|___|___|___|_|_|_|___|___|  |__,|  |_|_|\_/|___|  |___|___|_|_| |              
                                                                   |_|              
                                                                                    
            _ ___    _                                _         _   _               
 ___ ___   |_|  _|  | |_ _ _    ___ ___ ___ ___ ___ _| |_ _ ___| |_|_|___ ___       
| .'|_ -|  | |  _|  | . | | |  |  _| -_| . |  _| . | . | | |  _|  _| | . |   |_     
|__,|___|  |_|_|    |___|_  |  |_| |___|  _|_| |___|___|___|___|_| |_|___|_|_|_|    
                        |___|          |_|                                          " | less
}
CAMPO_DE_BIDA2 () {

	#es pot millorar aquest codi
	mapa0=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa1=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa2=( "⬜" "⬜" "⬜" "⬛" "⬛" "⬜" "⬛" "⬛" "⬛" "⬜")
	mapa3=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬛" "⬜" "⬜" "⬜" "⬜")
	mapa4=( "⬜" "⬜" "⬜" "⬜" "⬛" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa5=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa6=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa7=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")
	mapa8=( "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜" "⬜")

}


CAMPO_DE_BIDA () {
contadorY=0
	while [ $tamanyMapaY -gt $contadorY ]
	do
		contadorX=0
		while [ $tamanyMapaXB -gt $contadorX ]
		do
			objecteAleatori=$(($RANDOM%2))
			if  [ $objecteAleatori -lt 1 ] 
			then 
				objecteGenerat=$bida
			elif [ $objecteAleatori -lt 2 ] 
			then 
				objecteGenerat=$muerte
			fi
			eval mapa$contadorY[$contadorX]=$objecteGenerat
			let contadorX=$contadorX+1
		done
		let contadorY=$contadorY+1
	done

}
MOSTRAR_CAMPO_DE_BIDA () {

	contadorY=0	
	clear
	if [ $canvi -eq 0 ]
	then
		while [ $tamanyMapaY -gt $contadorY ]
		do
			eval mapaY='$'{mapa$contadorY[*]}
			echo "$mapaY"
			let contadorY=$contadorY+1
		done 


	else
		while [ $tamanyMapaY -gt $contadorY ]
		do
			eval mapaY='$'{mapaCopia$contadorY[*]}
			echo "$mapaY"
			let contadorY=$contadorY+1
		done 

	fi
 

      
}


MIRAR_VECINOS2 () {
	contadorY=0	
	contadorX=0
	contadorXX=0
	contadorYY=0
	vecinos=0
	if [ $canvi -eq 0 ]
	then
		while [ $tamanyMapaY -gt $contadorY ]
		do
			contadorX=0
			eval mapaY='$'{mapa$contadorY[*]}
			for vidaOMuerte in $mapaY
			do


					let X=$contadorX-1
					let Y=$contadorY
					
					#echo "${mapa7[$X]}"
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY
									
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
								
					fi
					let X=$contadorX
					let Y=$contadorY-1
									
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
								
					fi
					let X=$contadorX
					let Y=$contadorY+1
									
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
									
					
					fi
					let X=$contadorX-1
					let Y=$contadorY-1
									
					eval posicio='$'{mapa$Y[$X]} 
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
										
					fi
					let X=$contadorX-1
					let Y=$contadorY+1
									
					eval posicio='$'{mapa$Y[$X]} 
					if [ "$posicio" = "⬛" ]
					then
				
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY-1
									
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
										
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY+1
									
					eval posicio='$'{mapa$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
										
					fi
		


					if [ "$vidaOMuerte" = "⬛" ]
					then		

						if [ $vecinos -lt 2 ]
						then
												#echo "viva $contadorX $contadorY però morirà per falta de veïns"
							casilla="⬜"
						elif [ $vecinos -gt 3 ]
						then
							casilla="⬜"
												#echo "viva $contadorX $contadorY  però morirà per tindre massa veïns"
						else
							casilla="⬛"
						fi
												#echo "viva $contadorX $contadorY "
					fi	
					if [ "$vidaOMuerte" = "⬜" ]
					then
																#echo "morta $contadorX $contadorY "
						if [ $vecinos -eq 3 ]
						then
												#echo "morta $contadorX $contadorY  però viurà per tindre massa veïns"
							casilla="⬛"
						else 
							casilla="⬜"
						fi
					fi
					
			vecinos=0
			#echo "$contadorY"

				if [ $tamanyMapaX -gt $contadorXX ]
				then			
					eval mapaCopia$contadorYY[$contadorXX]=$casilla
					#echo "$casilla $contadorXX"
					let contadorXX=$contadorXX+1
				else

					let contadorYY=$contadorYY+1 
					#echo "$casilla $contadorYY"
					contadorXX=0
					
					eval mapaCopia$contadorYY[$contadorXX]=$casilla

				fi
								let contadorX=$contadorX+1	

			done
			contadorYYY=0
			
			let contadorY=$contadorY+1
		done   
		while [ $contadorYYY -lt $tamanyMapaY ]
			do
				eval mapaCopia$contadorYYY[$tamanyMapaX]="⬜"
				let contadorYYY=$contadorYYY+1
			done
		canvi=1 
									
	else


		while [ $tamanyMapaY -gt $contadorY ]
		do
		contadorX=0
		eval mapaY='$'{mapaCopia$contadorY[*]}
		for vidaOMuerte in $mapaY
		do


					let X=$contadorX-1
					let Y=$contadorY
					
					#echo "${mapa7[$X]}"
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
								
					fi
					let X=$contadorX
					let Y=$contadorY-1
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
								
					fi
					let X=$contadorX
					let Y=$contadorY+1
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
									
					
					fi
					let X=$contadorX-1
					let Y=$contadorY-1
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
										
					fi
					let X=$contadorX-1
					let Y=$contadorY+1
									
					eval posicio='$'{mapaCopia$Y[$X]} 
					if [ "$posicio" = "⬛" ]
					then
				
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY-1
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
										
						let vecinos=$vecinos+1
						
					fi
					let X=$contadorX+1
					let Y=$contadorY+1
									
					eval posicio='$'{mapaCopia$Y[$X]}
					if [ "$posicio" = "⬛" ]
					then
						let vecinos=$vecinos+1
										
					fi
		

				if [ "$vidaOMuerte" = "⬛" ]
				then		

					if [ $vecinos -lt 2 ]
					then
											#echo "viva $contadorX $contadorY $vecinos però morirà per falta de veïns"
						casilla="⬜"
					elif [ $vecinos -gt 3 ]
					then
						casilla="⬜"
											#echo "viva $contadorX $contadorY  $vecinos però morirà per tindre massa veïns"
					else
						casilla="⬛"
					fi
											#echo "viva $contadorX $contadorY $vecinos "
				fi	
				if [ "$vidaOMuerte" = "⬜" ]
				then
											#				echo "morta $contadorX $contadorY $vecinos"
					if [ $vecinos -eq 3 ]
					then
											#echo "morta $contadorX $contadorY $vecinos però viurà per tindre massa veïns"
						casilla="⬛"
					else 
						casilla="⬜"
					fi
				fi
				
			vecinos=0
			if [ $tamanyMapaX -gt $contadorXX ]
			then			
				eval mapa$contadorYY[$contadorXX]=$casilla
				#echo "$casilla $contadorXX"
				let contadorXX=$contadorXX+1
			else

				let contadorYY=$contadorYY+1 
				#echo "$casilla $contadorYY"
				contadorXX=0
				
				eval mapa$contadorYY[$contadorXX]=$casilla
				

			fi
							let contadorX=$contadorX+1	
								
		
		done

		let contadorY=$contadorY+1
	done   
	contadorYYY=0
		while [ $contadorYYY -lt $tamanyMapaY ]
			do
				eval mapa$contadorYYY[$tamanyMapaX]="⬜"
				let contadorYYY=$contadorYYY+1
			done
		canvi=0 #elproblema va per aci
	fi
}



#VARIABLES
bida="⬛"
muerte="⬜"
temps=0.3
canvi=0
tamanyMapaY=9
tamanyMapaX=9
tamanyMapaXB=10

#MAIN PROGRAM
MENU
MIRAR_VECINOS2
if [ $world -eq 1 ]
then
	CAMPO_DE_BIDA
else
	GENERAR_MAPA

	read -e -n 1 -p "Edit the file GeneratMapa.txt in order to create your world and press enter when you are ready" 
		source GenerarMapa.txt
	miau
fi

MOSTRAR_CAMPO_DE_BIDA

while true
do
	MIRAR_VECINOS2
sleep $temps
	MOSTRAR_CAMPO_DE_BIDA
done
