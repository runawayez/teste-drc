*** Settings ***

Resource    ../pages/homepage.resource
Resource    ../pages/purchase.resource
Resource    ../pages/user.resource

Variables   ../data/cart.py
Variables   ../data/categories.py
Variables   ../data/homepage.py
Variables   ../data/login.py
Variables   ../utils/login.py

Library     SeleniumLibrary
Library     String
Library     FakerLibrary    locale=pt_BR    providers=None    seed=None