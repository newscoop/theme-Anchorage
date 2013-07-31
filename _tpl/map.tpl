                                <aside id="map">
                                    <h4 class="section-title">News Map</h4>
                                    <div>
										{{* All possible constraints for setting the map can seen here:
										https://wiki.sourcefabric.org/display/CS/Dynamic+maps+-+Constraints *}}
										{{ set_map
										    label="{{ #latestLocations# }}"
										    issues="_current"
										    max_points=5
										}}

										{{* Options for displaying the map are described here:
										https://wiki.sourcefabric.org/display/CS/Dynamic+maps+-+Display *}}
										{{ map
										    show_locations_list=false
										    show_reset_link=true
										    area_show="focus"
										    width="100%"
										    height="300"
										    show_open_link=true
										    open_map_on_click=false
										    popup_width="1000"
										    popup_height="750"
										    max_zoom=15
										    map_margin=20
										    area_show="focus"
										}}
                                    </div>
                                </aside>