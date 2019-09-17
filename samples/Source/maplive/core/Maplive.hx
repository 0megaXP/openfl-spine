package maplive.core;


import openfl.display.Tilemap;
import spine.SkeletonData;
import spine.SkeletonJson;
import spine.attachments.AtlasAttachmentLoader;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.display.BitmapData;
import openfl.utils.Assets;
import zygame.utils.load.SpineTextureAtlasLoader;

/**
 * 地图编辑器工具
 */
class Maplive extends Sprite{

    public function new(){
        super();
        this.addEventListener(Event.ADDED_TO_STAGE,onInit);
    }

    public function onInit(e:Event):Void
    {
        stage.color = 0x002630;
        var jsonData:String = Assets.getText("assets/bonus.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/bonus.atlas",["assets/bonus.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // Sprite格式
            var openflSprite = textureAtals.buildSpriteSkeleton("bonus",jsonData);
            this.addChild(openflSprite);
            openflSprite.y = 300;
            openflSprite.x = 700;
            openflSprite.play("animation");
            openflSprite.scaleX = 0.6;
            openflSprite.scaleY = 0.6;
            openflSprite.isNative = true;
        },function(error:String):Void{
            trace("加载失败：",error);
        });

        var jsonData:String = Assets.getText("assets/wild.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/wild.atlas",["assets/wild.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // Sprite格式
            var openflSprite = textureAtals.buildSpriteSkeleton("wild",jsonData);
            this.addChild(openflSprite);
            openflSprite.y = 500;
            openflSprite.x = 700;
            openflSprite.play("animation");
            openflSprite.scaleX = 0.6;
            openflSprite.scaleY = 0.6;
            openflSprite.isNative = true;
        },function(error:String):Void{
            trace("加载失败：",error);
        });

        // return;
        var jsonData:String = Assets.getText("assets/off/red_shiba.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/off/red_shiba.atlas",["assets/off/red_shiba.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // Sprite格式
            var openflSprite = textureAtals.buildSpriteSkeleton("red_shiba",jsonData);
            this.addChild(openflSprite);
            openflSprite.y = 500;
            openflSprite.x = 500;
            openflSprite.play("animation");
            openflSprite.scaleX = 0.6;
            openflSprite.scaleY = 0.6;
            openflSprite.isNative = false;
        },function(error:String):Void{
            trace("加载失败：",error);
        });

        var jsonData:String = Assets.getText("assets/red_shiba.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/red_shiba.atlas",["assets/red_shiba.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // Sprite格式
            var openflSprite = textureAtals.buildSpriteSkeleton("red_shiba",jsonData);
            this.addChild(openflSprite);
            openflSprite.y = 300;
            openflSprite.x = 500;
            openflSprite.play("animation");
            openflSprite.scaleX = 0.6;
            openflSprite.scaleY = 0.6;
            openflSprite.isNative = false;
        },function(error:String):Void{
            trace("加载失败：",error);
        });

        

        var jsonData:String = Assets.getText("assets/sesame_shiba.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/sesame_shiba.atlas",["assets/sesame_shiba.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // Sprite格式
            var openflSprite = textureAtals.buildSpriteSkeleton("sesame_shiba",jsonData);
            this.addChild(openflSprite);
            openflSprite.y = 300;
            openflSprite.x = 300;
            openflSprite.play("animation");
            openflSprite.scaleX = 0.6;
            openflSprite.scaleY = 0.6;
            openflSprite.isNative = false;
        },function(error:String):Void{
            trace("加载失败：",error);
        });


        var jsonData:String = Assets.getText("assets/sxkCenter.json");
        var spineTextureAtals:SpineTextureAtlasLoader = new SpineTextureAtlasLoader("assets/sxkCenter.atlas",["assets/sxkCenter.png"]);
        spineTextureAtals.load(function(textureAtals:SpineTextureAtals):Void{
            // tilemap格式
            var tilemap:Tilemap = new Tilemap(stage.stageWidth,stage.stageHeight,textureAtals.loader.getTileset());
            var tilemapSprite = textureAtals.buildTilemapSkeleton("sxkCenter",jsonData);
            this.addChild(tilemap);
            tilemap.addTile(tilemapSprite);
            tilemapSprite.y = 500;
            tilemapSprite.x = 200;
            tilemapSprite.play("run");
            tilemapSprite.scaleX = 0.6;
            tilemapSprite.scaleY = 0.6;
        },function(error:String):Void{
            trace("加载失败：",error);
        });

        var fps:openfl.display.FPS = new openfl.display.FPS();
        fps.textColor = 0xffffff;
        this.addChild(fps);

    }

}