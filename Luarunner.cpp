extern "C"
{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"

}

int main(int argc, char *argv[])
{

    lua_State* L;

    // initialize Lua interpreter
    L = luaL_newstate();

    // load Lua base libraries (print / math / etc)
    luaL_openlibs(L);

    ////////////////////////////////////////////
    // We can use Lua here !
    //   Need access to the LuaState * variable L
    /////////////////////////////////////////////
    luaL_dofile(L, "main.lua");

    // Cleanup:  Deallocate all space assocatated with the lua state */
    lua_close(L);

    // Hack to prevent program from ending immediately
    printf( "Press enter to exit..." );
    getchar();

    return 0;

}