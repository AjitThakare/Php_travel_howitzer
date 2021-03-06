class Base_Page  < Howitzer::Web::Page

path '/'
validate :url, /\A(?:.*?:\/\/)?[^\/]*\/?\z/
element :myaccount_link, :xpath, "html/body/div[2]/div/div/div[2]/ul[2]/li[2]/a"
element :login_link, :xpath, "html/body/div[2]/div/div/div[2]/ul[2]/li[2]/ul/li[1]/a"
 element :signup_link,    :xpath,"html/body/div[2]/div/div/div[2]/ul[2]/li[2]/ul/li[2]/a" 
 element :hotels_link, "a[href$='properties']"

def click_account_link()
    myaccount_link_element.click
  end

   def click_login_link()
    login_link_element.click
  end
 def click_signup_link()
    signup_link_element.click
  end

  def click_hotels_link
  	hotels_link_element.click  	
  end
end