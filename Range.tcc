// -*- mode : c++; -*-
#pragma once

#include <boost/range/algorithm_ext/iota.hpp>

template<template<typename...> class Container, typename T>
auto Range(std::size_t len, std::size_t initial = T{0})
{
    Container<T> container(len);
    boost::iota(container, initial); 
    return container;
}