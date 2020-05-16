/*
======SIMPLE-BASE 2 DEV feito por Milton Manuel====
==========www.github.com/srmilton============
*/

#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <zcmd>

//----------------------------------------------------------

#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_NORMAL_PLAYER 0xFFBB7777
#define COLOR_WHITE_BLUE    0x00FFFFFF
#define COLOR_YELLOW        0xFFFF00FF
#define COLOR_PURPLE        0xCC33FFFF
//========================================================
new isgod[MAX_PLAYERS];

//========================================================

main()
print("Gamemode Iniciado!");

public OnPlayerConnect(playerid)
{
	for(new i; i < 99; i++)//Limpar Chat
	{
	SendClientMessage(playerid, COLOR_WHITE, "");
	}

	SendClientMessage(playerid, COLOR_WHITE, "Simple Base 2 DEV por Milton Manoel");
	SendClientMessage(playerid, COLOR_WHITE_BLUE, "Disponível em www.github.com/srmilton");
	SetSpawnInfo(playerid, 0, 0, 1958.33, 1343.12, 15.36, 269.15, 0, 0, 0, 0, 0, 0 );
	SpawnPlayer(playerid);
	isgod[playerid] = 1;
	return true;
}

public OnPlayerSpawn(playerid)
{
    SetPlayerPos(playerid, 1958.33, 1343.12, 15.36);
	TogglePlayerControllable(playerid,1);
	if(isgod[playerid] == 1) SetPlayerHealth(playerid,99999);
	return true;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    SetPlayerPosFindZ(playerid, fX, fY, fZ+2);
    return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
	if(isgod[playerid] == 1) SetPlayerHealth(playerid,99999);
	return true;
}

stock ReturnName(playerid) //Maneira certa de retornar nomes durantes as funções
{
  new name[MAX_PLAYER_NAME + 1];
  GetPlayerName(playerid, name, sizeof(name));
  return name;
}

CMD:ir(playerid, params[])
{
	new pid;
	new Float:x, Float:y, Float:z;
	new string[50];
	if (sscanf(params, "u", pid))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /ir [ID]");
	}
	if(pid == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_YELLOW, "ID Invalido.");
	
	format(string,sizeof(string),"Você teleportou até o jogador %s.", ReturnName(pid));
	SendClientMessage(playerid, COLOR_WHITE_BLUE, string);
	
	format(string,sizeof(string),"O jogador %s teleportou até você.", ReturnName(playerid));
	SendClientMessage(pid, COLOR_WHITE_BLUE, string);
	
	
	GetPlayerPos(pid, x, y, z);
 	SetPlayerPos(playerid, x, y+2, z);
 	return true;
}

CMD:trazer(playerid, params[])
{
    new pid;
	new Float:x, Float:y, Float:z;
	new string[50];
	if (sscanf(params, "u", pid))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /ir [ID]");
	}
	if(pid == INVALID_PLAYER_ID) return SendClientMessage(playerid, COLOR_YELLOW, "ID Invalido.");
	
	format(string,sizeof(string),"Você teleportou o jogador %s.", ReturnName(pid));
	SendClientMessage(playerid, COLOR_WHITE_BLUE, string);

	format(string,sizeof(string),"Você foi teleportado para o jogador %s.", ReturnName(playerid));
	SendClientMessage(pid, COLOR_WHITE_BLUE, string);
	
	GetPlayerPos(playerid, x, y, z);
 	SetPlayerPos(pid, x, y+2, z);
 	return true;
}

CMD:criarcarro(playerid, params[])
{
	new id;
	new Float:x, Float:y, Float:z;
	if (sscanf(params, "d", id))
	{
	    return SendClientMessage(playerid, COLOR_YELLOW, "Use /carro [ID].");
	}
	if(id < 400 || id > 611) return SendClientMessage(playerid, COLOR_YELLOW, "Escolha um ID maior que 400 e menor que 611.");
	
	GetPlayerPos(playerid, x, y, z);
	CreateVehicle(id, x, y+2, z+1, 82.2873, -1, -1, -1);
	return true;
}

CMD:gmx()
{
	GameModeExit();
	print(" ");
	print("GMX Realizado");
	print(" ");
	return true;
}

CMD:god(playerid)
{
	if(isgod[playerid] == 1)
	{
    SetPlayerHealth(playerid,100);
    SendClientMessage(playerid, COLOR_YELLOW, "GodMode desativado.");
    isgod[playerid] = 0;
	}
	else if(isgod[playerid] == 0)
	{
	SetPlayerHealth(playerid,99999);
    SendClientMessage(playerid, COLOR_YELLOW, "GodMode ativado.");
    isgod[playerid] = 1;
	}
	return true;
}
//==================================================================================================================


