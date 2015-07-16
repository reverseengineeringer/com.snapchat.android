.class public final Lbhc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lbhc;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lbhc;

    invoke-direct {v0}, Lbhc;-><init>()V

    sput-object v0, Lbhc;->sInstance:Lbhc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lbhc;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbhc;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a()Lbhc;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lbhc;->sInstance:Lbhc;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->a()V

    .line 39
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->a()V

    .line 44
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    return-void
.end method
