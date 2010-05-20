describe 'Dirge' do
  it "should resolve a path through String#~" do
    (~'test:2test/test').should == File.expand_path(File.join(File.dirname(__FILE__), 'test:2test', 'test'))
  end
  
  it "should resolve a path through File#relative" do
    File.relative('test:2test/test').should == File.expand_path(File.join(File.dirname(__FILE__), 'test:2test', 'test'))
  end
  
  it 'should require a relative path' do
    proc {
      require_relative 'test:2test/test'
    }.should raise_error(RuntimeError, 'okay okay, you included me')
  end
  
  it 'should autoload a relative path' do
    proc {
      mod = Module.new do
        autoload_relative :TestingTime, 'test:2test/test'
      end
      mod::TestingTime
    }.should raise_error(RuntimeError, 'okay okay, you included me')
  end
  
  it "should define __DIR__" do
    __DIR__.should == File.expand_path(File.dirname(__FILE__))
  end
  
  it "should define __DIR__ with a custom caller" do
    __DIR__('testing/test.rb:3').should == File.expand_path('testing')
  end
  
end