.class public Lbfw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Lawp;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field private final mProfileImageUtils:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbfw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfw;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lbfw;-><init>(Ljava/util/concurrent/Executor;Lawp;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lawp;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lbfw;->mExecutor:Ljava/util/concurrent/Executor;

    .line 31
    iput-object p2, p0, Lbfw;->mCache:Lawp;

    .line 32
    iput-object p3, p0, Lbfw;->mProfileImageUtils:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 33
    return-void
.end method

.method static synthetic a(Lbfw;)Lawp;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbfw;->mCache:Lawp;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbfw;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbfw;)Lcom/snapchat/android/util/profileimages/ProfileImageUtils;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbfw;->mProfileImageUtils:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    return-object v0
.end method
