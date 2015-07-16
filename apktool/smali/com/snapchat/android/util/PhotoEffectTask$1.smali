.class final Lcom/snapchat/android/util/PhotoEffectTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/PhotoEffectTask;->a([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/PhotoEffectTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/PhotoEffectTask;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snapchat/android/util/PhotoEffectTask$1;->this$0:Lcom/snapchat/android/util/PhotoEffectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcw;

    invoke-direct {v1}, Lbcw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
