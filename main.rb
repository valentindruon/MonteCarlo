require_relative "handle"
require "thread"
require "benchmark"

$bank_points = 0
$player_points = 0
$m_bank = Mutex.new
$m_player = Mutex.new

handle = Handle.new
t = Thread.new { 1000000.times { handle.launch } }
measure = Benchmark.realtime do
  t.join
end
puts "Elapsed time : #{measure} s"
puts "Bank points : #{$bank_points}"
puts "Player points : #{$player_points}"
puts "Win rate : #{$bank_points.to_f/$player_points.to_f}"