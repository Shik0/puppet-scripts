

function hostname::environment( String $host) >> String {

  $env_name = $host ? {
    
    /[^\-]+-p-[^\-]+/ => 'Production',
    /[^\-]+-p-[^\-]+/ => 'Development',
    /[^\-]+-p-[^\-]+/ => 'QA',
  }

  $env_name
}
