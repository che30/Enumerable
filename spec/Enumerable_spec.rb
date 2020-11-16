# spec/Enumerable_spec.rb
require_relative '../main'
describe Enumerable do
  let (:arr) {[1, 2, 3]}
  let (:hash) { {'x'=>'a', 'y'=>'b'} }
  let (:range) { (1...5) }
  describe '#my_each' do
    context 'it runs to the end of my_each if arguments are passed returns enum otherwise' do
      it{ expect(arr.my_each).to be_instance_of(Enumerator)}
      it {expect(hash.my_each).to be_instance_of(Enumerator)}
      it {expect(arr.my_each {|x| puts x*2}).not_to eql([2, 4, 6])}
      it {expect(hash.my_each{|x| x=={'x'=>'a', 'y'=>'b'} })}
      it {expect(range.my_each {|x| x==(1...5)})}

    end
  end
end