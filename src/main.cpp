#include "Poco/DigestStream.h"
#include "Poco/MD5Engine.h"
#include "hello.h"
#include <iostream>

int main()
{
    Poco::MD5Engine md5;
    Poco::DigestOutputStream ds(md5);
    ds << "abcdefghijklmnopqrstuvwxyz";
    ds.close();
    std::cout << Poco::DigestEngine::digestToHex(md5.digest()) << std::endl;

	auto msg = std::string{ "hello world!" };
	hello( msg );
    return 0;
}
