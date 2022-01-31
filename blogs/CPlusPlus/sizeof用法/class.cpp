#include <iostream>
#include <cstdlib>

namespace t15 {
	class Heap {
	public:
		// 用户可以调用new创建对象
		Heap()
		{
			p = malloc(100);
		}

		void destroy() 
		{ 
			delete this;
		}

	private:
		// 用户无法调用delete删除对象
		~Heap()
		{
			free(p);
		}
	private:
		void *p;
	};
};
using namespace t15;
int main(){
    Heap *heap = new Heap;
    return 0;
}