#Menjalankan composer 
#docker exec -w /var/www/html/ 1eca347a7e68 composer create-project laravel/laravel=9.1.5 crud-laravel9
containerId := fcfed6f077c6
createproject:
	@docker exec -w /var/www/html/ $(containerId) $(command)

#docker exec -w /var/www/html/crud-laravel9  1eca347a7e68 php artisan make:controller mahasiswaController
phpartisan:
	@docker exec -w /var/www/html/crud-laravel9  $(containerId) php artisan $(command)
	
composer:
	@docker exec -w /var/www/html/crud-laravel9 $(containerId) composer $(command)
