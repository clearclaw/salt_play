{% set users = pillar.get ("users", {}) %}

{% set removes = {} %}
{% for typ in ["roles", "users"] %}
  {% for user, props in users.active[typ].items () 
      if (not (grains.roles | intersect (props.roles))
        and "__ALL__" not in props.roles)
	or grains.roles | intersect (props.not_roles) %}
    {% do removes.update ({user: props}) %}
  {% endfor %}
  {% for user, props in users.remove[typ].items () %}
    {% do removes.update ({user: props}) %}
  {% endfor %}
{% endfor %}

{% for user, props in removes.items () %}
user__remove__{{ user }}:
  user.absent:
    - name: {{ user }}
    - purge: {{ props.get ("purge", False) }}
    - force: True
{% endfor %}
