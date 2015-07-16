.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lahz;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lahz;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lahz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 723
    packed-switch p2, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 725
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 728
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 731
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
