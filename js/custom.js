// Funcao para gerar senha conforme o tipo da senha enviado no paramento
async function gerarSenha(tipoSenha) {

    // Chamar o arquivo PHP para gerar a senha
    const dados = await fetch('gerar_senha.php?tipo=' + tipoSenha);

    // Ler os dados retornado pelo PHP
    const resposta = await dados.json();
    //console.log(resposta);

    // Acessar o IF quando houve erro no arquivo "gerar_senha.php"
    if (!resposta['status']) {
        // Enviar a mensagem de erro para o SELETOR "msgAlerta"
        document.getElementById("msgAlerta").innerHTML = resposta['msg'];

        // Apagar a senha gerada anteriormente
        document.getElementById("senhaGerada").innerHTML = "";
    } else {
        // Enviar a senha gerada para o SELETOR "senhaGerada"
        document.getElementById("senhaGerada").innerHTML = resposta['nome_senha'];
        // Apagar a mensagem de erro caso exista 
        document.getElementById("msgAlerta").innerHTML = "";
    }
}

async function apagarUsuarioDados(id) {

    var confirmar = confirm("Tem certeza que deseja reiniciar a contagem das senhas?");

    if(confirmar == true){
        const dados = await fetch('apagar.php');

        const resposta = await dados.json();
        if (resposta['erro']) {
            msgAlerta.innerHTML = resposta['msg'];
        } else {
            msgAlerta.innerHTML = resposta['msg'];
        }
    }    
}

async function visualizar(id) {

    var confirmar = confirm("Tem certeza que deseja reiniciar a contagem das senhas?");

    if(confirmar == true){
        const dados = await fetch('visualizar.php');

        const resposta = await dados.json();
        if (resposta['erro']) {
            msgAlerta.innerHTML = resposta['msg'];
        } else {
            document.getElementById("senhaGerada").innerHTML = resposta['msg'];
        }
    }    
}