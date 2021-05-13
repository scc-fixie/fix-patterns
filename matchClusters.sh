#!/bin/bash

# calculated vs TBar:
declare -a calculated_clusters=('cli-21' 'jaC-9' 'cli-18,cli-22,cli-22,cli-22,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-137,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-148,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-153,clo-155,clo-155,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-156,clo-158,clo-158,clo-158,clo-158,clo-158,clo-16,clo-16,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-163,clo-165,clo-165,clo-165,clo-165,clo-167,clo-167,clo-167,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-169,clo-175,clo-175,clo-175,clo-175,clo-175,clo-3,clo-3,clo-46,clo-51,clo-64,clo-64,cod-8,com-43,csv-16,gso-4,gso-4,jaD-10,jaD-10,jaD-10,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-22,jaD-75,jaD-75,jaD-75,jso-3,jso-30,jso-30,jso-30,jso-30,jso-30,jso-30,jso-30,jso-63,jso-66,jso-66,jxP-13,jxP-13,jxP-13,jxP-13,jxP-13,jxP-4,jxP-4,jxP-4,jxP-7,jxP-7,jxP-7,jxP-7,jxP-9,jxP-9,jxP-9,lan-30,lan-30,lan-30,lan-30,lan-32,lan-32,lan-46,lan-46,lan-46,lan-46,lan-46,lan-63,mat-66,mat-66,mat-66,mat-66,mat-66,mat-66,mat-66,mat-66,mat-66,mat-77,mat-90,moc-10,moc-10,moc-10,moc-10,moc-16,moc-16,moc-19,moc-19,moc-19,moc-19,moc-19,moc-19,moc-19,moc-19,moc-21,moc-21,moc-21,moc-25,moc-25,moc-25,moc-30,moc-30' 'jaD-10' 'cli-16,cli-18,cli-21,clo-162,clo-163,clo-26,clo-68,clo-68,clo-79,com-4,com-6,gso-8,gso-8,gso-8,gso-8,jaC-11,jaC-12,jaC-12,jaD-10,jaD-10,jaD-77,jaD-78,jso-2,jso-73,jso-92,lan-43,mat-6,moc-23' 'clo-53' 'com-29,com-29,com-29,com-29,com-29,jaC-26,jso-85' 'clo-168,clo-70,clo-86,cod-3,cod-4,cod-7,mat-104,mat-22,mat-22,mat-81,moc-26' 'jaC-15' 'jso-76' 'jaC-22jaC-22jaC-22' 'clo-150,jaD-14,jaD-56,jso-1,jso-58,jso-8,jso-87,jxP-19,lan-15,mat-27' 'lan-33' 'com-34' 'cli-1,cli-18,cli-27,cli-33,cli-39,clo-10,clo-27,clo-27,clo-30,clo-4,clo-74,clo-79,clo-92,com-32,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-103,jaD-108,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-31,jaD-82,jaD-96,jaD-97,jso-12,jso-23,jso-3,jso-3,jso-3,jso-61,jso-62,jso-77,jso-86,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-87,jso-92,jxP-10,mat-100,mat-100,mat-75,mat-83,moc-21' 'jso-38' 'jaC-12' 'cha-6' 'cha-18,cli-1,cli-1,cli-19,cli-25,cli-31,cli-32,clo-106,clo-11,clo-115,clo-126,clo-134,clo-136,clo-138,clo-140,clo-148,clo-149,clo-149,clo-153,clo-153,clo-154,clo-154,clo-169,clo-173,clo-18,clo-31,clo-49,clo-54,clo-6,clo-6,clo-78,clo-85,clo-89,clo-9,cod-16,cod-8,com-22,com-22,com-22,com-22,com-22,com-22,com-27,com-31,com-4,com-4,com-4,com-9,csv-15,csv-8,gso-4,gso-4,gso-4,gso-4,gso-4,gso-4,gso-4,gso-4,gso-4,gso-9,gso-9,jaC-2,jaC-5,jaD-102,jaD-83,jso-18,jso-21,jso-24,jso-4,jso-4,jso-40,jso-52,jso-63,jso-63,jso-63,jso-68,lan-10,lan-15,lan-34,lan-7,lan-8,lan-8,mat-18,mat-18,mat-46,mat-46,mat-50,mat-58,moc-23,tim-1,tim-2' 'jxP-9' 'clo-148,clo-30,jso-3,jso-31' 'jso-79' 'com-11,gso-12,lan-3,mat-95,tim-3,tim-3,tim-3,tim-3,tim-3,tim-3,tim-3,tim-3,tim-3,tim-3' 'jso-17' 'jso-73' 'clo-125,com-47' 'lan-13' 'cha-10,clo-3,clo-90,com-20,com-20,com-20,jso-29,jso-56,jso-56,jso-6,jso-88,lan-4,mat-26,moc-10,moc-23,moc-4,moc-4' 'jaD-79' 'clo-158' 'jso-81' 'clo-15,clo-15,clo-5,jaD-61' 'mat-19' 'jxP-1' 'cha-1,clo-62,clo-73,com-19,jaC-14,jaC-14,jaC-25,mat-65,mat-82,mat-85,tim-19' 'clo-89' 'lan-35' 'cli-22,clo-16,clo-163,clo-163,clo-163,com-29,com-29,csv-16,jso-87,jxP-13' 'jaD-73' 'jso-16' 'jaX-5,moc-14,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6,moc-6' 'clo-112' 'tim-15' 'jaD-45' 'clo-149,jaC-16,mat-81' 'com-46' 'mat-92' 'clo-108,clo-127,clo-51' 'com-29,com-29' 'clo-134' 'lan-32' 'jaC-1,jaC-1,jso-78' 'jaD-27' 'cha-17' 'clo-113,jaD-110,jaD-111,jaD-90,jso-51,mat-24' 'lan-14' 'cli-12' 'jaC-9,jaC-9,jaC-9,jaC-9,jaC-9,mat-93' 'lan-5' 'mat-13,mat-14' 'clo-21,jso-28' 'jaC-24' 'clo-132' 'jaD-111,jaD-111,jaD-111,jaD-111,jaD-111,jaD-111' 'clo-32' 'jso-92' 'clo-60' 'jso-65jso-65' 'tim-24' 'clo-137' 'mat-16,mat-16' 'jaD-106,jaD-106' 'cha-2,cha-2' 'jso-13' 'jaD-74' 'gso-15' 'cli-9' 'cli-8' 'clo-57,clo-67' 'com-35' 'lan-11' 'clo-30,clo-30' 'clo-148' 'clo-154' 'clo-119,clo-80' 'mat-7' 'jxP-17' 'tim-9' 'csv-16' 'com-2,jso-39' 'cha-11,cha-24,cha-7,cha-8,cli-36,cli-36,cli-7,clo-14,clo-149,clo-75,com-42,jaD-34,jaD-37,jaD-54,jso-66,lan-21,lan-59,lan-6,lan-60,lan-60,mat-15,mat-33,mat-49,mat-49,mat-49,mat-49,mat-5,mat-59,mat-72,mat-98,mat-98,moc-5' 'moc-17' 'jxP-14,jxP-14,jxP-14' 'jaD-58' 'jso-54' 'cli-38' 'jso-11' 'clo-142' 'clo-171' 'clo-166' 'clo-140,clo-158,com-1,jso-16,jso-55,lan-38,moc-2' 'clo-167' 'csv-1' 'tim-20' 'gso-3' 'clo-40' 'cod-11' 'mat-87' 'jso-58' 'jaD-69,jaD-69' 'jaD-64' 'cha-15,cha-26,cha-4,csv-5,gso-6,jaD-15,jaD-49,jaD-80,jaD-80' 'gso-13' 'cli-34,clo-144,clo-165,clo-175,clo-37,cod-1,cod-1,cod-1,cod-13,com-43,com-43,jaD-105,jaD-52,jaD-75,jso-66,jso-66,lan-26,mat-70,moc-19,moc-25,moc-30,tim-26,tim-26,tim-26,tim-26,tim-26,tim-26,tim-26,tim-26' 'jso-3' 'clo-1' 'cha-22' 'lan-20,lan-20' 'com-3,com-3,moc-17' 'jaC-18,jaC-18' 'mat-78' 'clo-158' 'col-25,col-25,col-25' 'tim-8' 'jaD-9' 'cli-1,clo-134,clo-134,com-34,jaC-12,jaD-95' 'jaD-65,jso-59,jso-80,mat-28' 'moc-27' 'jaD-13,jaD-13,mat-4,mat-4' 'jaD-105,jaD-42' 'moc-8' 'jso-3' 'lan-18' 'jaD-15,jaD-15' 'jaD-30' 'jxP-12' 'mat-92' 'moc-33' 'mat-52' 'clo-102,clo-13,clo-137,clo-156,jso-64,jxP-20,lan-4,mat-86,tim-4,tim-7' 'moc-32' 'clo-64,clo-64,cod-2' 'clo-160' 'clo-161' 'jxP-4' 'jso-44' 'mat-69' 'cli-11' 'jaD-81' 'clo-97' 'clo-122' 'clo-48' 'clo-144' 'cli-34,clo-144,jaD-107,jaD-95' 'jso-72' 'jaC-2,jaC-2' 'lan-64' 'cod-11' 'jaC-10' 'jaD-100' 'tim-9' 'mat-88' 'clo-83' 'clo-147' 'jso-3,lan-24' 'mat-74' 'mat-54' 'jaD-18' 'clo-144,clo-165,com-3' 'clo-165' 'clo-169,clo-169,clo-169,clo-169,clo-169,mat-6' 'csv-6,lan-55' 'clo-36' 'clo-100' 'clo-47' 'jaD-47' 'clo-35' 'clo-137' 'clo-90' 'jaD-32' 'jso-84' 'clo-108' 'jaC-18,jaD-109,jso-67,lan-23' 'clo-157' 'jaD-29' 'clo-43' 'mat-44' 'clo-103,clo-80,gso-11,gso-11,jaD-32' 'cha-21,com-45' 'jxP-21' 'clo-66' 'jso-73' 'jaD-98' 'csv-2,jso-60' 'jaD-38,jaD-38' 'lan-62,lan-62' 'clo-147,jaD-71,jso-47,jxP-1' 'csv-9' 'tim-22' 'mat-6,mat-6,mat-6,mat-6,mat-6' 'csv-11' 'jaD-85' 'jaD-53' 'lan-65' 'clo-106' 'gso-2gso-2' 'jaD-87' 'jso-36' 'cha-13,csv-12' 'clo-98' 'jso-36' 'jaC-19,jaC-19' 'jaD-109jaD-109' 'jaD-18' 'jso-73,lan-57,mat-34,mat-65' 'clo-59,jaD-15' 'jso-41' 'clo-37,jso-82' 'mat-32' 'clo-148' 'lan-63' 'jaC-24' 'jso-33' 'jaD-3' 'lan-17' 'moc-15,moc-15' 'cha-25,cha-25' 'jso-56' 'cli-16' 'mat-66' 'jso-19' 'cli-3' 'clo-139' 'jaD-53' 'cha-21' 'com-26' 'clo-45' 'csv-16' 'jaD-70,mat-67,mat-67' 'jaD-30,jaX-2' 'mat-60' 'moc-31' 'mat-14' 'jaC-12,jaC-12,jaC-12' 'gso-5' 'tim-13' 'mat-81' 'moc-14' 'clo-87' 'moc-35,moc-35' 'lan-28' 'clo-123' 'jaD-59,jso-87' 'lan-41' 'mat-11' 'mat-77' 'clo-29' 'jxP-11' 'jaD-104' 'moc-29,moc-38' 'clo-148' 'jaD-91' 'clo-34' 'jaD-53' 'mat-40' 'mat-73' 'tim-6,tim-6' 'tim-17' 'cli-30,cli-30' 'clo-157,clo-157' 'lan-50,lan-50' 'jaC-20' 'jaD-38' 'jaD-25,jaD-25,jaD-25,jaD-25,moc-6' 'clo-162' 'jaD-44' 'clo-158' 'clo-141' 'clo-151' 'cli-5' 'lan-25' 'jso-46' 'cod-14' 'jaD-16' 'mat-30,mat-57,mat-79' 'cli-14' 'clo-151' 'jso-56' 'clo-118' 'clo-163' 'mat-99' 'lan-8' 'clo-43' 'jaD-28' 'com-15' 'jaD-41' 'csv-10' 'clo-103' 'jaD-89,jaD-92' 'clo-159' 'jaD-4,jaD-4' 'cli-24' 'mat-62' 'lan-47,lan-47' 'clo-167,clo-167' 'lan-44' 'clo-163' 'jaD-41' 'clo-167,jxP-4' 'moc-6' 'lan-52' 'cli-31' 'jxP-16' 'jso-22,jso-22,jso-22' 'clo-96' 'lan-35' 'tim-1' 'clo-23' 'clo-148' 'clo-155' 'moc-7' 'jso-18' 'jaC-2,jaC-2' 'jaD-62' 'jaD-76' 'clo-82' 'jaD-11' 'jaD-79' 'jso-43' 'com-17' 'tim-13' 'cha-12,mat-35,mat-35' 'clo-17' 'cli-31' 'lan-29' 'com-22' 'mat-15' 'clo-141' 'cod-9,mat-83' 'clo-135,tim-2' 'jxP-13' 'jso-50' 'cha-9' 'lan-30,lan-30' 'cli-20' 'jso-9' 'jaD-61,jaD-61' 'csv-7' 'lan-31' 'jaC-10' 'clo-133' 'jaD-17' 'mat-41' 'clo-174' 'lan-40' 'clo-110' 'jaD-57' 'clo-33' 'clo-64,jxP-9,lan-46,lan-46,lan-46,lan-46,moc-16,moc-16' 'jso-30' 'mat-17' 'cod-5' 'mat-47' 'clo-3' 'jso-65' 'mat-76,mat-76' 'moc-17' 'jaC-21' 'jaD-3,jaD-95' 'mat-1,mat-1' 'com-2' 'jaD-36' 'cod-17' 'jaD-15' 'clo-39' 'jso-10' 'lan-54' 'cha-16' 'clo-85' 'clo-138' 'jaD-30' 'mat-84' 'jaD-35' 'clo-104' 'cli-22' 'com-10' 'lan-30' 'moc-24' 'clo-26,jaD-68,jaD-68,jaD-68,jaD-68,jaD-68' 'lan-45' 'gso-10,gso-10' 'clo-143' 'com-3' 'cod-11' 'clo-109' 'com-40' 'lan-48' 'jaD-8' 'jaC-18' 'cli-35' 'jaC-14' 'csv-13' 'jaD-50' 'cli-40' 'jaC-6' 'moc-6,moc-6,moc-6' 'clo-58,jso-56' 'mat-47' 'lan-34' 'mat-102' 'jaD-104' 'lan-36' 'mat-92,mat-93' 'jaD-94' 'jxP-9' 'cod-11' 'jso-52' 'mat-38' 'jaD-101' 'clo-163' 'clo-69' 'mat-23' 'moc-4' 'jxP-6' 'cod-6' 'com-42' 'clo-134' 'jso-75' 'mat-18' 'jxP-13' 'lan-13' 'jso-52' 'jaD-15,jaD-15' 'clo-84' 'cha-14,cha-14,cha-14,cha-14,cha-15' 'com-23' 'cli-1' 'com-28' 'jso-31' 'clo-16' 'clo-137' 'jaD-87' 'tim-14' 'clo-75' 'cli-13' 'mat-71,mat-71' 'jso-56' 'clo-12' 'csv-8' 'com-47,jaD-88' 'jxP-2' 'clo-52' 'clo-149' 'jso-73' 'clo-43' 'jaD-15' 'clo-170' 'clo-94' 'jso-44,jso-44' 'com-2' 'clo-108,clo-135' 'jso-52' 'jso-14' 'mat-25' 'moc-35' 'csv-4' 'jaD-30,jaD-30' 'clo-76' 'jso-83' 'jaD-12' 'clo-108' 'clo-165,com-25' 'lan-51' 'clo-45' 'jso-22' 'com-18' 'clo-174' 'jso-20' 'clo-121' 'jaC-2' 'jxP-18' 'clo-20' 'jso-45' 'clo-44' 'jso-5' 'clo-128' 'clo-173' 'clo-60,jaD-51' 'moc-23' 'lan-36' 'mat-45' 'jaC-23' 'jaD-69' 'clo-164' 'jaD-75' 'jso-48' 'mat-61' 'jaD-7' 'tim-12,tim-12' 'jaD-15' 'clo-72' 'jaD-110' 'clo-54' 'clo-157' 'cli-28' 'jaD-18' 'clo-120' 'clo-134' 'clo-100' 'clo-130' 'cha-18' 'com-24,mat-48' 'cod-15' 'mat-20' 'mat-55' 'tim-9' 'jaD-10' 'clo-72' 'moc-37' 'jso-42' 'mat-3' 'clo-42' 'mat-9' 'clo-170' 'mat-63' 'clo-167' 'jxP-2,moc-12' 'com-5' 'jaD-93' 'moc-11' 'clo-61' 'lan-7' 'clo-26' 'clo-175' 'com-37' 'mat-29' 'jaD-87' 'jaD-67' 'clo-95' 'cli-23' 'jxP-4' 'jaD-48,jaD-48' 'tim-23' 'jaD-99' 'jaD-39' 'tim-10' 'moc-11' 'jaD-19' 'clo-54' 'lan-4' 'clo-136' 'csv-13' 'clo-50' 'com-33' 'mat-2' 'lan-32' 'cli-1' 'jaC-3' 'cha-18' 'clo-165,moc-17' 'mat-42' 'clo-174' 'clo-56' 'com-7' 'clo-107' 'cha-22,cha-22' 'clo-30' 'cha-19,cha-19' 'tim-6' 'clo-101' 'clo-49' 'jso-26' 'cli-21' 'jaX-1' 'jaD-1' 'clo-34' 'jxP-16' 'clo-111,clo-111' 'com-30' 'clo-116' 'mat-90' 'jso-35' 'clo-24' 'cha-20' 'com-21' 'lan-12' 'clo-76' 'mat-64' 'tim-2' 'jso-27' 'clo-91' 'lan-30' 'jaD-6' 'jaX-2' 'jxP-3,jxP-3' 'moc-3' 'mat-97' 'mat-93' 'clo-145' 'jso-37' 'clo-2' 'csv-3' 'jso-56' 'clo-163' 'com-13' 'moc-13' 'cha-16' 'jso-3' 'jaD-22' 'lan-49' 'mat-47' 'mat-8' 'moc-20' 'tim-5' 'tim-11' 'cod-14' 'jaC-8' 'cli-17' 'mat-66' 'jaC-7' 'mat-37,mat-37' 'clo-171' 'jaD-33' 'jxP-19' 'jaD-2' 'jaD-5' 'csv-14' 'com-36' 'com-16' 'clo-169' 'gso-17' 'jso-22' 'clo-71' 'jaX-4' 'clo-38' 'jaC-17' 'jso-93' 'cli-37' 'clo-142' 'tim-18' 'cli-10' 'jso-25' 'cli-29' 'clo-176' 'com-14' 'cli-22' 'gso-7,gso-7' 'clo-163' 'jso-32' 'jso-36' 'jaD-66' 'moc-22' 'lan-32' 'clo-129' 'jso-53' 'jso-21' 'mat-21' 'mat-29' 'mat-56' 'tim-12,tim-12' 'clo-47' 'mat-53' 'clo-154' 'jso-90' 'jxP-8' 'clo-16' 'mat-99' 'moc-16' 'jaD-2' 'mat-54' 'mat-36,mat-36' 'cli-22' 'clo-84' 'lan-27' 'cha-22' 'mat-106' 'mat-68' 'cli-16' 'jaC-24' 'clo-41' 'moc-28' 'jaD-60' 'mat-91' 'jso-89' 'jaD-73,jso-92' 'clo-152' 'mat-103' 'lan-22' 'clo-77' 'cha-3' 'jso-15' 'lan-39' 'moc-9' 'jaD-46' 'jso-31' 'jso-71' 'jso-63' 'clo-110' 'mat-39' 'clo-117' 'jaC-1' 'cli-2' 'jaC-4' 'jaC-16' 'lan-19' 'moc-34' 'jso-7' 'clo-7' 'moc-36' 'clo-99' 'jaD-63' 'jso-57' 'cli-21' 'clo-148' 'clo-143' 'mat-80' 'clo-19' 'jxP-13' 'com-39' 'jso-11' 'jaD-112' 'mat-62' 'lan-42' 'cha-5' 'clo-25' 'jxP-17' 'jaD-68' 'com-2' 'clo-137' 'clo-9' 'mat-43' 'clo-131' 'jso-83' 'lan-41' 'lan-58' 'jso-91' 'clo-22' 'jaD-18' 'com-44' 'clo-124' 'cli-1' 'cli-1' 'cli-4' 'cli-15' 'clo-55' 'clo-144' 'clo-146' 'jaD-43' 'clo-65' 'clo-172' 'jxP-11' 'clo-98' 'jxP-15' 'cli-26' 'cod-18' 'jaC-17' 'com-6' 'moc-18' 'jaD-29' 'mat-89' 'jso-28' 'tim-25' 'jso-67' 'mat-31' 'lan-9' 'gso-1' 'jaD-18' 'jaC-24' 'cod-10' 'com-38' 'com-41' 'jso-56' 'mat-96' 'jaX-3' 'jxP-22' 'mat-51' 'clo-41' 'mat-105' 'com-43' 'lan-16' 'clo-155' 'clo-8' 'com-8' 'jaD-22' 'mat-94' 'jso-70' 'tim-10' 'jxP-5' 'lan-1' 'jaD-10' 'jso-3' 'jso-34' 'lan-61' 'jaD-24' 'clo-88' 'moc-1' 'clo-114' 'jaD-65' 'jaD-78' 'tim-27' 'jaD-81' 'tim-16' 'com-12' 'mat-10' 'clo-34' 'jaD-55' 'clo-49' 'jso-74' 'jaD-65' 'jso-60' 'jaD-94' 'clo-105' 'clo-158' 'mat-68' 'lan-37' 'clo-81' 'jxP-4' 'clo-139' 'mat-101')
declare -a true_clusters=('cha-1,clo-38,clo-62,clo-63,clo-73,lan-22,mat-65,mat-82,mat-85,tim-19' 'cha-4,cha-26,clo-2,lan-33,lan-39' 'cha-7,cha-8,cha-11,cha-24,lan-6,lan-59,mat-5,mat-33,mat-59,mat-98,tim-7' 'cha-9,mat-15' 'cha-12,mat-35' 'cha-14,moc-29,moc-38' 'cha-18,clo-6,clo-11,clo-21,clo-22,clo-85,clo-106,clo-115,clo-126,lan-7,lan-10,lan-63,mat-50' 'cha-19' 'cha-20' 'clo-4,clo-10,mat-75' 'clo-13,clo-102' 'clo-18,clo-31,lan-15' 'clo-40,clo-70,clo-86,mat-22,moc-26' 'clo-46,mat-77' 'lan-26,mat-70,tim-26' 'lan-47' 'lan-51' 'lan-57,mat-34' 'mat-11' 'mat-30,mat-57,mat-79' 'mat-80' 'mat-89' 'tim-3')

declare -a matching_cluster=()
declare -a matching_cluster_indeces=()
declare -a single_item_cluster_indeces=()

t_counter=0
## now loop through the above array
for t_cluster in "${true_clusters[@]}"
do
	#echo $t_counter, "$t_cluster"
	t_counter=$((t_counter+1))

	unset matchingList
	unset t_clusterList
	matchingList=()
	t_clusterList=$t_cluster
	# make array from simple string
	t_clusterList=(${t_clusterList//,/ })
	t_clusterList=$(echo "$t_clusterList" | xargs -n1 | sort | xargs)

    for t_item in ${t_clusterList[@]}
    do
        #echo $t_item

        c_counter=0
		for c_cluster in "${calculated_clusters[@]}"
		do
			c_counter=$((c_counter+1))
			#echo $c_counter, "$c_cluster"
			unset c_clusterList
			c_clusterList=$c_cluster
			# make array from simple string
			#c_cluster=$(echo "$c_cluster" | xargs -n1 | sort | xargs)
			c_clusterList=(${c_clusterList//,/ })
			#c_clusterList=$(echo "$c_clusterList" | xargs -n1 | sort | xargs)
		   
			#if [ ${#c_clusterList[@]} = 1 ]; then
			#	single_item_cluster_indeces=(${single_item_cluster_indeces[@]} $c_counter)
			#fi

		    match=0
		    for c_item in ${c_clusterList[@]}
		    do
		    	if [ "$t_item" = "$c_item" ]; then
		    		match=1
				    #echo "Items are equal: ", $t_item, $c_item
				fi
		    done
		    if [ $match = 1 ]; then
		    	#echo $matchingList
		    	#echo $c_cluster

		    	if [[ ! " ${matchingList[@]} " =~ " ${c_cluster} " ]]; then
		    		matchingList=( "${matchingList[@]}" $c_cluster )
		    	fi
		    	cc=0
		    	for value in "${matchingList[@]}"
				do
					#echo $cc, $value
					cc=$((cc+1))
				done
		    	#matchingList+=( $c_cluster )
		    	#echo $matchingList
		    	if [[ ! " ${matching_cluster_indeces[@]} " =~ " ${c_counter} " ]]; then
		    		matching_cluster_indeces=(${matching_cluster_indeces[@]} $c_counter)
		    		#echo $c_counter
		    	fi
		    fi
		done

    done

    #echo "Matching true clusters to calculated clusters"
	#echo "(" $t_cluster ") -> (" ${matchingList[@]} ")"
	if [ ${#matchingList[@]} -gt 0 ]; then
		echo $t_counter
		printf "( %s ) --> " "$t_cluster"
		printf "\n("

		for value in "${matchingList[@]}"
		do
			value=$(echo $value | sed -e $'s/,/\\\n/g' | sort -n | tr '\n' ',' | sed 's/.$//')
			#echo ${#value}
			if [[ ! " $value " =~ "" ]]; then
				printf " ( "
			    printf $value
			    printf " ) "
			fi
		done
		printf ")\n"
	fi

done


#echo $matching_cluster_indeces

echo "Non-matching calculated clusters length >= 5:"
nonmatching_c=0
for c_cluster in "${calculated_clusters[@]}"
do
	nonmatching_c=$((nonmatching_c+1))
	if [[ ! " ${matching_cluster_indeces[@]} " =~ " ${nonmatching_c} " ]]; then
		c_clusterList=(${c_cluster//,/ })

		if [ ${#c_clusterList[@]} -ge 5 ]; then
			c_cluster=$(echo $c_cluster | sed -e $'s/,/\\\n/g' | sort -n | tr '\n' ',' | sed 's/.$//')
			for value in "${c_cluster[@]}"
			do
				printf " ( "
		    	printf $value
		    	printf " ) "
			done
			printf "\n"
		fi
	fi
done

echo "Non-matching calculated clusters length 4:"
nonmatching_c=0
for c_cluster in "${calculated_clusters[@]}"
do
	nonmatching_c=$((nonmatching_c+1))
	if [[ ! " ${matching_cluster_indeces[@]} " =~ " ${nonmatching_c} " ]]; then
		c_clusterList=(${c_cluster//,/ })
		c_clusterList=$(echo "$c_clusterList" | xargs -n1 | sort | xargs)

		if [ ${#c_clusterList[@]} -eq 4 ]; then
			c_cluster=$(echo $c_cluster | sed -e $'s/,/\\\n/g' | sort -n | tr '\n' ',' | sed 's/.$//')
			for value in "${c_cluster[@]}"
			do
				printf " ( "
		    	printf $value
		    	printf " ) "
			done
			printf "\n"
		fi
	fi
done

echo "Non-matching calculated clusters length 3:"
nonmatching_c=0
for c_cluster in "${calculated_clusters[@]}"
do
	nonmatching_c=$((nonmatching_c+1))
	if [[ ! " ${matching_cluster_indeces[@]} " =~ " ${nonmatching_c} " ]]; then
		c_clusterList=(${c_cluster//,/ })

		if [ ${#c_clusterList[@]} -eq 3 ]; then
			c_cluster=$(echo $c_cluster | sed -e $'s/,/\\\n/g' | sort -n | tr '\n' ',' | sed 's/.$//')
			for value in "${c_cluster[@]}"
			do
				printf " ( "
		    	printf $value
		    	printf " ) "
			done
			printf "\n"
		fi
	fi
done
