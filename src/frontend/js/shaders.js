Shaders = {
    atmosphere:{
        uniforms: {},
        vertexShader: [
        'varying vec3 vNormal;',
        'void main() {',
            'vNormal = normalize( normalMatrix * normal );',
            'gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );',
        '}'
        ].join('\n'),
        fragmentShader: [
        'varying vec3 vNormal;',
        'void main() {',
            'vec3 light = normalize(vec3(1.0));',
            'float lambert =dot(vNormal, light);',
            'float atmo = pow(0.8 - dot(vNormal,vec3(0.0,0.0,1.0)),2.0)*9.0;',
            'atmo = clamp(atmo,0.0,1.0);',
            'gl_FragColor = vec4(vec3(0.5)*(lambert+atmo),0.5);',
        '}'
        ].join('\n')
    }

};
