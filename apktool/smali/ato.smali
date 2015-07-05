.class public final Lato;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FROM_JSON:Ljava/lang/String; = "fromJson"

.field private static final TAG:Ljava/lang/String; = "GsonWrapper"

.field private static final TO_JSON:Ljava/lang/String; = "toJson"


# instance fields
.field private final mClock:Lbgk;

.field private final mGracefulExceptionHandler:Lazp;

.field private final mGson:Lcom/google/gson/Gson;


# direct methods
.method protected constructor <init>(Lazp;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Laxu;

    new-instance v2, Laxv;

    invoke-direct {v2}, Laxv;-><init>()V

    invoke-virtual {v2}, Laxv;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Layh;

    new-instance v2, Layi;

    invoke-direct {v2}, Layi;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcgs;

    new-instance v2, Lais;

    invoke-direct {v2}, Lais;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lato;->mGson:Lcom/google/gson/Gson;

    .line 45
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lato;->mClock:Lbgk;

    .line 46
    iput-object p1, p0, Lato;->mGracefulExceptionHandler:Lazp;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-double v2, v0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v5

    .line 131
    :goto_0
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_1

    move-wide v0, v2

    .line 132
    :goto_1
    const-string v6, "GsonWrapper"

    const-string v7, "%s [length %d] [duration %.3f ms] [per char %.3f ms] [type %s]"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v5

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    const/4 v4, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v8, v4

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v8, v2

    const/4 v0, 0x4

    aput-object p4, v8, v0

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 131
    :cond_1
    int-to-double v0, v4

    div-double v0, v2, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing Json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lato;->mGracefulExceptionHandler:Lazp;

    invoke-virtual {v1, v0}, Lazp;->a(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 78
    iget-object v0, p0, Lato;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v1, "fromJson"

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lato;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :goto_1
    invoke-direct {p0, p1, v0}, Lato;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Type;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 65
    iget-object v0, p0, Lato;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    const-string v1, "fromJson"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lato;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :goto_1
    invoke-direct {p0, p1, v0}, Lato;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 97
    iget-object v0, p0, Lato;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v4, "toJson"

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-static {v4, v1, v2, v3, v0}, Lato;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 100
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to serialize object. (You might be trying to serialize a mock)."

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
