.class final Lbac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lblb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lbac$a;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lbac$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbla;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lbac$a$1;

    invoke-direct {v0, p0}, Lbac$a$1;-><init>(Lbac$a;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 99
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v0, p0, Lbac$a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method
