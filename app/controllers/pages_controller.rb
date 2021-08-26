class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home styleguide featured]

  CARDS_FIND_CHEF = [
    {
      title: 'Step 1',
      instruction: 'Create an account',
      img_url: "https://i.postimg.cc/Kzmpd8N9/searching.png",
      alt: 'searching'
    },
    {
      title: 'Step 2',
      instruction: 'Search through the chefs',
      img_url: "https://i.postimg.cc/B6N7sf7J/tracking.png",
      alt: 'tracking'
    },
    {
      title: 'Step 3',
      instruction: 'Rent a chef',
      img_url: "https://i.postimg.cc/3w5cFBDQ/cooking.png",
      alt: 'cooking'
    },
    {
      title: 'Step 4',
      instruction: 'Rent a chef',
      img_url: "https://i.postimg.cc/v8q2NM6z/chef-home.png",
      alt: 'chef'
    }
  ]

  CARDS_RENT_CHEF = [
    {
      title: 'Step 1',
      instruction: 'Create an account',
      img_url: "https://i.postimg.cc/rwtH4bs9/bun.png",
      alt: 'bun'
    },
    {
      title: 'Step 2',
      instruction: 'Create your profile<',
      img_url: "https://i.postimg.cc/KjH9kryV/grilled-meat.png",
      alt: 'grilled meat'
    },
    {
      title: 'Step 3',
      instruction: 'Receive bookings',
      img_url: "https://i.postimg.cc/FKynWLjd/salad.png",
      alt: 'salad'
    },
    {
      title: 'Step 4',
      instruction: 'Accept bookings',
      img_url: "https://i.postimg.cc/SRsTx1HC/hamburger-home.png",
      alt: 'burger'
    }
  ]

  def home
    @cards_find_chef = CARDS_FIND_CHEF
    @cards_rent_chef = CARDS_RENT_CHEF
  end

  def styleguide
  end

  def featured
    @chefs = Chef.all
  end
end
