.class final Lael$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael;


# direct methods
.method constructor <init>(Lael;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lael$1;->a:Lael;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    check-cast p1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 149
    iget-object v0, p0, Lael$1;->a:Lael;

    iget-object v0, v0, Lael;->c:Laeh;

    iget-object v1, p0, Lael$1;->a:Lael;

    iget-object v1, v1, Lael;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    sget-object v2, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v0, p1, v1, v2}, Laeh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)Z

    .line 151
    return-void
.end method
