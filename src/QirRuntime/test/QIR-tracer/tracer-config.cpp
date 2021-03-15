// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

// TODO: ideally, this file should be generated by the Q# compiler alongside the qir, using the mappings specified in
// target.qs.

#include <memory>

#include "QirRuntimeApi_I.hpp"
#include "tracer-config.hpp"

namespace TracerUser
{
const std::unordered_map<Microsoft::Quantum::OpId, std::string> g_operationNames = {
    {0, "X"},     {1, "CX"},  {2, "MCX"},  {3, "Y"},     {4, "CY"},  {5, "MCY"},   {6, "Z"},
    {7, "CZ"},    {8, "MCZ"}, {19, "Rx"},  {20, "MCRx"}, {21, "Ry"}, {22, "MCRy"}, {23, "Rz"},
    {24, "MCRz"}, {9, "H"},  {10, "MCH"}, {11, "T"},  {12, "MCT"}, {15, "S"},    {16, "MCS"} /*etc.*/};
}
