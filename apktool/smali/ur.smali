.class public interface abstract Lur;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUEST_ID_HEADER_NAME:Ljava/lang/String; = "X-Snapchat-Request-Id"


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbgk;Ljava/lang/Object;)Lus;
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/api2/framework/HttpMethod;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lbgk;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbgk;",
            "Ljava/lang/Object;",
            ")",
            "Lus;"
        }
    .end annotation
.end method
