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
            'float lambert =dot( vNormal, vec3( 1.0, 1.0, 1.0 ));',
            'float atmo = pow(0.8 - dot(vNormal,vec3(0.0,0.0,1.0)),2.0);',
            'atmo = clamp(atmo,0.0,1.0);',
            'gl_FragColor = vec4(vec3(atmo),1.0);',
            'gl_FragColor = vec4(vec3(0.5)*(lambert+atmo*10.0),0.5);',
        '}'
        ].join('\n')
    }

};
