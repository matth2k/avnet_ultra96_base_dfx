# *************************************************************************
#    ____  ____
#   /   /\/   /
#  /___/  \  /
#  \   \   \/    � Copyright 2017 Xilinx, Inc. All rights reserved.
#   \   \        This file contains confidential and proprietary
#   /   /        information of Xilinx, Inc. and is protected under U.S.
#  /___/   /\    and international copyright and other intellectual
#  \   \  /  \   property laws.
#   \___\/\___\
#
#
# *************************************************************************
#
# Disclaimer:
#
#       This disclaimer is not a license and does not grant any rights to
#       the materials distributed herewith. Except as otherwise provided in
#       a valid license issued to you by Xilinx, and to the maximum extent
#       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
#       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
#       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
#       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
#       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#       (2) Xilinx shall not be liable (whether in contract or tort,
#       including negligence, or under any other theory of liability) for
#       any loss or damage of any kind or nature related to, arising under
#       or in connection with these materials, including for any direct, or
#       any indirect, special, incidental, or consequential loss or damage
#       (including loss of data, profits, goodwill, or any type of loss or
#       damage suffered as a result of any action brought by a third party)
#       even if such damage or loss was reasonably foreseeable or Xilinx
#       had been advised of the possibility of the same.
#
# Critical Applications:
#
#       Xilinx products are not designed or intended to be fail-safe, or
#       for use in any application requiring fail-safe performance, such as
#       life-support or safety devices or systems, Class III medical
#       devices, nuclear facilities, applications related to the deployment
#       of airbags, or any other applications that could lead to death,
#       personal injury, or severe property or environmental damage
#       (individually and collectively, "Critical Applications"). Customer
#       assumes the sole risk and liability of any use of Xilinx products
#       in Critical Applications, subject only to applicable laws and
#       regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
# FILE AT ALL TIMES.
#
# *************************************************************************
#get Platform Name
file mkdir build
cd build
set PLATFORM_NAME [lindex $argv 0]
set VER [lindex $argv 1]

set_param general.maxThreads 4

puts "INFO: (Xilinx Acceleration Development Board Reference Design) creating emulation project and constructing BD"
source ../create_emu_design.tcl

set_param general.maxThreads 4

# Project
puts "INFO: (Xilinx Acceleration Development Board Reference Design) creating project and constructing BD"
source ../create_design.tcl

set_param general.maxThreads 4

# Synthesis
puts "INFO: (Xilinx Acceleration Development Board Reference Design) launching synthesis"
source ../run_synth.tcl

# Implementation
puts "INFO: (Xilinx Acceleration Development Board Reference Design) launching implementation"
source ../run_impl.tcl

# XSA
puts "INFO: (Xilinx Acceleration Development Board Reference Design) opening implementation and writing DSA"
source ../write_xsa.tcl

puts "INFO: (Xilinx Acceleration Development Board Reference Design) Write README.hw"
source ../write_readme.tcl
cd ..
##### write bitfiles
####puts "INFO: (Xilinx Acceleration Development Board Reference Design) opening implementation and writing bitfiles"
####source write_bitfile.tcl
##### Finish
####puts "INFO: (Xilinx Acceleration Development Board Reference Design) done"
