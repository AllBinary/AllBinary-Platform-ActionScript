
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2011 AllBinary
                *  
                *  By agreeing to this license you and any business entity you represent are
                *  legally bound to the AllBinary Open License Version 1 legal agreement.
                *  
                *  You may obtain the AllBinary Open License Version 1 legal agreement from
                *  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
                *  
                *  Created By: Travis Berthelot  
        */
        
        /* Generated Code Do Not Modify */

        


            import { Exception } from '../../../../../java/lang/Exception.js';
        
import { Command } from '../../../../../javax/microedition/lcdui/Command.js';
//not GWT import const Command

import { CommandListener } from '../../../../../javax/microedition/lcdui/CommandListener.js';
//not GWT import const CommandListener

import { Graphics } from '../../../../../javax/microedition/lcdui/Graphics.js';
//not GWT import const Graphics

import { GameInfo } from '../../../../../org/allbinary/game/GameInfo.js';
//not GWT import const GameInfo

import { GameCommandsFactory } from '../../../../../org/allbinary/game/commands/GameCommandsFactory.js';
//not GWT import const GameCommandsFactory

import { GameCommandCanvas } from '../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas.js';
//not GWT import const GameCommandCanvas

import { AllBinaryGameLayerManager } from '../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.js';
//not GWT import const AllBinaryGameLayerManager

import { ColorFillBasePaintable } from '../../../../../org/allbinary/game/paint/ColorFillBasePaintable.js';
//not GWT import const ColorFillBasePaintable

import { ColorFillPaintableFactory } from '../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.js';
//not GWT import const ColorFillPaintableFactory

import { HighScoreCommandsFactory } from '../../../../../org/allbinary/game/score/HighScoreCommandsFactory.js';
//not GWT import const HighScoreCommandsFactory

import { HighScores } from '../../../../../org/allbinary/game/score/HighScores.js';
//not GWT import const HighScores

import { HighScoresCanvasInputProcessor } from '../../../../../org/allbinary/game/score/HighScoresCanvasInputProcessor.js';
//not GWT import const HighScoresCanvasInputProcessor

import { HighScoresCanvasInputProcessorFactoryInterface } from '../../../../../org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.js';
//not GWT import const HighScoresCanvasInputProcessorFactoryInterface

import { HighScoresFactoryInterface } from '../../../../../org/allbinary/game/score/HighScoresFactoryInterface.js';
//not GWT import const HighScoresFactoryInterface

import { HighScoresHelperBase } from '../../../../../org/allbinary/game/score/HighScoresHelperBase.js';
//not GWT import const HighScoresHelperBase

import { HighScoresPaintable } from '../../../../../org/allbinary/game/score/HighScoresPaintable.js';
//not GWT import const HighScoresPaintable

import { HighScoresResultsListener } from '../../../../../org/allbinary/game/score/HighScoresResultsListener.js';
//not GWT import const HighScoresResultsListener

import { NoHighScoresFactory } from '../../../../../org/allbinary/game/score/NoHighScoresFactory.js';
//not GWT import const NoHighScoresFactory

import { NullHighScoresSingletonFactory } from '../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory.js';
//not GWT import const NullHighScoresSingletonFactory

import { BasicColorFactory } from '../../../../../org/allbinary/graphics/color/BasicColorFactory.js';
//not GWT import const BasicColorFactory

import { NullPaintable } from '../../../../../org/allbinary/graphics/paint/NullPaintable.js';
//not GWT import const NullPaintable

import { Paintable } from '../../../../../org/allbinary/graphics/paint/Paintable.js';
//not GWT import const Paintable

import { SimpleTextPaintable } from '../../../../../org/allbinary/graphics/paint/SimpleTextPaintable.js';
//not GWT import const SimpleTextPaintable

//not plain js import { LogUtil } 
const LogUtil = globalThis.org.allbinary.logic.communication.log.LogUtil;
type LogUtil<T = any, U = any> = typeof LogUtil extends abstract new (...args: any[]) => infer Instance ? Instance : typeof LogUtil;

//not plain js import { StringMaker } 
const StringMaker = globalThis.org.allbinary.logic.string.StringMaker;
type StringMaker<T = any, U = any> = typeof StringMaker extends abstract new (...args: any[]) => infer Instance ? Instance : typeof StringMaker;

//not plain js import { CommonStrings } 
const CommonStrings = globalThis.org.allbinary.string.CommonStrings;
type CommonStrings<T = any, U = any> = typeof CommonStrings extends abstract new (...args: any[]) => infer Instance ? Instance : typeof CommonStrings;

import { SecondaryThreadPool } from '../../../../../org/allbinary/thread/SecondaryThreadPool.js';
//not GWT import const SecondaryThreadPool

















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        import { HighScoreRunnable } from './HighScoreRunnable.js';
//sameFolderImports - not GWT import - same folder const HighScoreRunnable

export class HighScoresCanvas extends GameCommandCanvas implements HighScoresResultsListener {
        

    public static readonly NAME: string = "HighScoresCanvas";

    private paintable: Paintable = NullPaintable.getInstance()!;

    private readonly highScoreCommandsFactory: HighScoreCommandsFactory = HighScoreCommandsFactory.getInstance()!;

    private readonly waitPaintable: SimpleTextPaintable = new SimpleTextPaintable(this.commonStrings!.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance()!.WHITE);

    private readonly highScoresPaintable: HighScoresPaintable;

    private readonly highScoresFactoryInterface: HighScoresFactoryInterface;

    colorFillPaintable: ColorFillBasePaintable;

    private readonly highScoresHelper: HighScoresHelperBase = new HighScoresHelperBase();

    private readonly gameInfo: GameInfo;

    private readonly highScoresCanvasInputProcessor: HighScoresCanvasInputProcessor;

    private currentCommand: Command = this.highScoreCommandsFactory!.HIGH_SCORE_COMMANDS[0]!;

    hasPainted: boolean = false;

public constructor (commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, gameInfo: GameInfo, paintable: HighScoresPaintable, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface){
            super(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager!.getBackgroundBasicColor(), allBinaryGameLayerManager!.getForegroundBasicColor());
                    

                            //For kotlin this is before the body of the constructor.
                    
this.logUtil!.putF(this.commonStrings!.START, this, this.commonStrings!.CONSTRUCTOR);
    
this.highScoresPaintable= paintable;
    
this.highScoresFactoryInterface= highScoresFactoryInterface;
    
this.highScoresCanvasInputProcessor= highScoresCanvasInputProcessorFactoryInterface!.getInstance(this);
    
this.gameInfo= gameInfo;
    
this.waitPaintable!.setBasicColorP(allBinaryGameLayerManager!.getForegroundBasicColor());
    
this.getHighScoresPaintable()!.setBasicColorP(allBinaryGameLayerManager!.getForegroundBasicColor());
    
this.colorFillPaintable= ColorFillPaintableFactory.getInstance()!.getInstance(allBinaryGameLayerManager!.getBackgroundBasicColor(), false);
    

                        if(this.highScoresHelper!.getHighScoresArray()!.length == NoHighScoresFactory.getInstance()!.NO_HIGH_SCORES.length)
                        
                                    {
                                    this.setPaintable(this.waitPaintable);
    

                                    }
                                
                        else {
                            this.logUtil!.putF("Show HighScores that are already loaded", this, this.commonStrings!.CONSTRUCTOR);
    
this.updateCommand(this.currentCommand);
    
this.setPaintable(this.getHighScoresPaintable());
    

                        }
                            
SecondaryThreadPool.getInstance()!.runTask(new HighScoreRunnable(this));
    
}


    public initCommands(cmdListener: CommandListener){
this.removeAllCommands();
    
this.addCommand(GameCommandsFactory.getInstance()!.CLOSE_AND_SHOW_GAME_CANVAS);
    
this.setCommandListener(cmdListener);
    
}


    public open(){
super.open();
    
this.highScoresCanvasInputProcessor!.open();
    
}


    public close(){
super.close();
    
this.highScoresCanvasInputProcessor!.close();
    
}


    public paint(graphics: Graphics){
this.colorFillPaintable!.paint(graphics);
    
this.paintable.paint(graphics);
    

                        if(this.waitPaintable != this.paintable)
                        
                                    {
                                    this.highScoresCanvasInputProcessor!.paint(graphics);
    

                                    }
                                
super.paint(graphics);
    
this.hasPainted= true;
    
}


    public executeUpdate(){

 try { this.highScoresFactoryInterface!.fetchHighScores(this.getGameInfo(), this);
    
 }
 catch (caught: any) {
 {
  const e = caught;
  
this.logUtil!.put(this.commonStrings!.EXCEPTION, this, this.commonStrings!.UPDATE, e);
    

 }
   }
 
}


    getHighScoresPaintable(): HighScoresPaintable{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.highScoresPaintable;
    
}


    public setHighScoresArray(highScoresArray: HighScores[]){

 try { 
                        if(highScoresArray != 
                                    null
                                )
                        
                                    {
                                    this.logUtil!.putF(new StringMaker().append(this.commonStrings!.START)!.appendint(highScoresArray!.length)!.toString(), this, "setHighScoresArray");
    

                                    }
                                
                        else {
                            this.logUtil!.putF(this.commonStrings!.START, this, "setHighScoresArray");
    

                        }
                            
this.highScoresHelper!.setHighScoresArray(highScoresArray);
    
this.updateCommand(this.currentCommand);
    
this.setPaintable(this.getHighScoresPaintable());
    
 }
 catch (caught: any) {
 {
  const e = caught;
  
this.logUtil!.put(this.commonStrings!.EXCEPTION, this, this.commonStrings!.UPDATE, e);
    

 }
   }
 
}


                //@Throws(Exception.constructor)
            
    public updateCommand(command: Command){
this.logUtil!.putF(new StringMaker().append(this.commonStrings!.START)!.append(this.stringUtil!.toString(command))!.toString(), this, this.commonStrings!.UPDATE);
    

    let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()!;;
    

                        if(this.highScoreCommandsFactory!.isHighScoreCommand(command))
                        
                                    {
                                    
    let index: number = this.highScoreCommandsFactory!.getIndex(command)!;;
    

    let nextIndex: number = index +1;;
    

    let highScoresArray: HighScores[] = this.highScoresHelper!.getHighScoresArray()!;;
    

                        if(nextIndex >= highScoresArray!.length)
                        
                                    {
                                    nextIndex= 0;
    

                                    }
                                

                        if(highScoresArray!.length > 0)
                        
                                    {
                                    this.getHighScoresPaintable()!.setHighScores(highScoresArray[index]!);
    

                                    }
                                
                        else {
                            this.getHighScoresPaintable()!.setHighScores(NullHighScoresSingletonFactory.getInstance());
    

                        }
                            

                        if(index != nextIndex)
                        
                                    {
                                    this.removeAllCommands();
    
this.addCommand(gameCommandsFactory!.CLOSE_AND_SHOW_GAME_CANVAS);
    
this.addCommand(this.highScoreCommandsFactory!.HIGH_SCORE_COMMANDS[nextIndex]!);
    

                                    }
                                

                                    }
                                
this.currentCommand= command;
    
this.close();
    
super.initMenu();
    
this.open();
    
this.repaintBehavior!.onChangeRepaint(this);
    
}


    public getGameInfo(): GameInfo{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        return this.gameInfo;
    
}


    setPaintable(paintable: Paintable){
this.paintable= paintable;
    
this.repaintBehavior!.onChangeRepaint(this);
    
}


}

