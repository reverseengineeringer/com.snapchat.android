.class public final Lalo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDirectoryUrls:Ljava/util/ArrayList;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_directory_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxies:Ljava/util/ArrayList;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lajz;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:J
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_list_version"
    .end annotation
.end field
