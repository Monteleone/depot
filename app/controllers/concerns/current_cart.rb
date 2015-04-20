#il metodo set_cart prende dall'oggetto session il :cart_id e poi prova a caercare il carrello corrispondente
#a questo id
#se non lo trova ne crea uno nuovo


module CurrentCart
	extend ActiveSupport::Concern

private

	def set_cart
		@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end
end	
