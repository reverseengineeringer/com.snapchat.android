.class final Lcom/snapchat/android/LandingPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$1;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$1;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/LandingPageActivity;)Z

    .line 299
    return-void
.end method
