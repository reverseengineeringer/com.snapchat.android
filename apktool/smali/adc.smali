.class public final Ladc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lawp;

.field public static final b:Lawp;

.field public static final c:Lawp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x9c40

    .line 16
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_INTRO_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Ladc;->a:Lawp;

    .line 18
    new-instance v0, Laxd;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_EDITIONS_CHUNKS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1}, Laxd;-><init>(Lcom/snapchat/android/util/cache/CacheType;)V

    sput-object v0, Ladc;->b:Lawp;

    .line 21
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_PUBLISHER_ICONS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Ladc;->c:Lawp;

    return-void
.end method
