.class public final Laoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahh;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Laoy;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Laoy;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Laoy;->a:Landroid/content/Context;

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
