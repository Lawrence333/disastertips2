
/*
 * Dist5
 * Created by Eqela Studio 2.0b7.4
 */

public class Dist5: SEScene
{
	SESprite disaster;
	SESprite main;
	SESprite title;
	SESprite info;
	SESprite tip1;
	SESprite tiplist;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mydist","disaster",get_scene_width(),get_scene_height());
        disaster = add_sprite_for_image(SEImage.for_resource("mydist"));
        disaster.move(0,0);
		rsc.prepare_font("font1","arial bold color=#DDDDDD",50);
		rsc.prepare_font("font2","arial bold color=#0000CC",50);
		rsc.prepare_font("font3","arial bold color=#000000",30);
		rsc.prepare_font("font4","arial bold color=#FFFFFF",20);
		title = add_sprite_for_text("Wildfires","font2");
		title.move(0.43*get_scene_width(),0.1*get_scene_height()); 
		main = add_sprite_for_text("Main Menu","font1");
		main.move(0.1*get_scene_width(),0.9*get_scene_height());   
		info = add_sprite_for_text("About Wildfires","font3");
		info.move(0.425*get_scene_width(),0.20*get_scene_height());
		tip1 = add_sprite_for_text("Wildfires are caused naturally or are man-made, but this covers natural wildfires and not man-made ones.","font4");
		tip1.move(0.02*get_scene_width(),0.31*get_scene_height());
		tip1 = add_sprite_for_text("These are usually caused by heat waves or long, direct exposure from the sun. A single spot can spread quickly if not contained.","font4");
		tip1.move(0.02*get_scene_width(),0.36*get_scene_height());
		tip1 = add_sprite_for_text("They also occur mostly in forests, which the forest ecology is at risk. It can also lead to greenhouse effect because of the smoke.","font4");
		tip1.move(0.02*get_scene_width(),0.41*get_scene_height());
		tip1 = add_sprite_for_text("Despite the fact they rarely injure people, this is still a risk since some wildfires can easily destroy a forest if not prevented.","font4");
		tip1.move(0.02*get_scene_width(),0.46*get_scene_height());
		tip1 = add_sprite_for_text("Lastly, some wildfires are mostly man-made, but they are still major concerns to forests and other areas. Here are some tips:","font4");
		tip1.move(0.02*get_scene_width(),0.51*get_scene_height());
		tip1 = add_sprite_for_text("1. Do not leave fires unattended, especially on camping trips. Immediately douse the fire with water.","font4");
		tip1.move(0.02*get_scene_width(),0.56*get_scene_height());
		tip1 = add_sprite_for_text("2. Beware of sparks as these are one of the main causes of wildfires.","font4");
		tip1.move(0.02*get_scene_width(),0.59*get_scene_height());
		tip1 = add_sprite_for_text("3. When surrounded by the fire, try to look for an area with no vegetation or is 100% water.","font4");
		tip1.move(0.02*get_scene_width(),0.62*get_scene_height());
		tip1 = add_sprite_for_text("4. When inside your home, get rid of items, especially gas canisters, which are flammable to avoid further risk.","font4");
		tip1.move(0.02*get_scene_width(),0.65*get_scene_height());
		tip1 = add_sprite_for_text("5. Ask for assistance from a local fire department to control the wildfire easily.","font4");
		tip1.move(0.02*get_scene_width(),0.68*get_scene_height());
		}

public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.1*get_scene_width(),0.9*get_scene_height(),0.2*get_scene_width(), 0.99*get_scene_height())) {
        switch_scene(new Distlist());
        }
	
	}
public void cleanup() 
	{
	base.cleanup();
	}
}

