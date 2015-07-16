.class public final Lakj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final AD_RESPONSE_CONTENT_TYPE_PARAM:Ljava/lang/String; = "type"

.field public static final AD_RESPONSE_DURATION_PARAM:Ljava/lang/String; = "duration"

.field public static final AD_RESPONSE_IMAGE_MEDIA_TYPE:Ljava/lang/String; = "image"

.field public static final AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM:Ljava/lang/String; = "media_zipped_with_overlay"

.field private static final ONLY_MEDIA_PARAM:Ljava/lang/String; = "only_download_raw_media"

.field private static final ONLY_MEDIA_VALUE:Ljava/lang/String; = "true"


# instance fields
.field public final mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field public final mEndpointProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lbgq;

    invoke-direct {v0}, Lbgq;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lakj$a;-><init>(Ljavax/inject/Provider;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lakj$a;->mDiscoverConfiguration:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 187
    iput-object p1, p0, Lakj$a;->mEndpointProvider:Ljavax/inject/Provider;

    .line 188
    return-void
.end method
