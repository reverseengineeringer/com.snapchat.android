.class public final Laty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_SERIALIZED_MAP:Ljava/lang/String; = "{}"

.field private static final sGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Laty;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
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
    .line 21
    sget-object v0, Laty;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 16
    sget-object v0, Laty;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
