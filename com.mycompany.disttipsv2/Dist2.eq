
/*
 * Dist2
 * Created by Eqela Studio 2.0b7.4
 */

public class Dist2: SEScene
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
		main = add_sprite_for_text("Main Menu","font1");
		main.move(0.1*get_scene_width(),0.9*get_scene_height());   
		title = add_sprite_for_text("Earthquake","font2");
		title.move(0.41*get_scene_width(),0.1*get_scene_height());
		info = add_sprite_for_text("About Earthquakes","font3");
		info.move(0.41*get_scene_width(),0.20*get_scene_height());
		tip1 = add_sprite_for_text("Earthquakes are caused by shaking the ground. They happen instantly and unpredictably, not to mention they cause tsunamis too.","font4");
		tip1.move(0.02*get_scene_width(),0.31*get_scene_height());
		tip1 = add_sprite_for_text("They can easily destroy any kinds of buildings, which are not earthquake-proof.","font4"); 
		tip1.move(0.02*get_scene_width(),0.36*get_scene_height());
		tip1 = add_sprite_for_text("Earthquakes are measured in magnitudes. The higher the magnitude, the more dangerous the earthquake is.","font4");
		tip1.move(0.02*get_scene_width(),0.41*get_scene_height());
		tip1 = add_sprite_for_text("They occur without warning and are hard to predict. They can only be measured and somehow forcasted with instruments.","font4");
		tip1.move(0.02*get_scene_width(),0.46*get_scene_height());
		tip1 = add_sprite_for_text("Lastly, severe ones with a magnitude of 7 or higher can cause massive damage to any area applicable. Here are the tips:","font4");
		tip1.move(0.02*get_scene_width(),0.51*get_scene_height());
		tip1 = add_sprite_for_text("1. Stay under a table to avoid getting hit by objects from above during an earthquake.","font4");
		tip1.move(0.02*get_scene_width(),0.56*get_scene_height());
		tip1 = add_sprite_for_text("2. Earthquakes can easily crumble buildings. Stay away from areas with aged and broken buildings.","font4"); 
		tip1.move(0.02*get_scene_width(),0.59*get_scene_height());
		tip1 = add_sprite_for_text("3. Put heavy objects on the bottom or near the floor to prevent them from causing injury.","font4");
		tip1.move(0.02*get_scene_width(),0.62*get_scene_height());
		tip1 = add_sprite_for_text("4. Beware of aftershocks. These occur right after the earthquake, so it is not safe until these shocks cease.","font4");
		tip1.move(0.02*get_scene_width(),0.65*get_scene_height());
		tip1 = add_sprite_for_text("5. Bolt hazardous-causing objects to the ground so that they won't be able to topple down.","font4");
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
