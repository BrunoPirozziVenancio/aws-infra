def lambda_handler(event, context):
    print("Função Lambda executada com sucesso!")
    return {
        'statusCode': 200,
        'body': 'Tudo certo!'
    }

