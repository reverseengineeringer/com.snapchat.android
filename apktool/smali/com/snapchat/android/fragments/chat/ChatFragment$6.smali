.class final Lcom/snapchat/android/fragments/chat/ChatFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1291
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 1294
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1296
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-nez v1, :cond_0

    instance-of v1, v0, Lakg;

    if-nez v1, :cond_0

    .line 1297
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1298
    instance-of v1, v0, Lakh;

    if-eqz v1, :cond_2

    .line 1299
    new-instance v1, Lys;

    invoke-direct {v1}, Lys;-><init>()V

    check-cast v0, Lakh;

    invoke-virtual {v1, v0}, Lys;->a(Lakh;)V

    goto :goto_0

    .line 1300
    :cond_2
    instance-of v1, v0, Lakb;

    if-eqz v1, :cond_3

    .line 1301
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyq;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    check-cast v0, Lakb;

    invoke-virtual {v1, v2, v0, v3, v3}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V

    goto :goto_0

    .line 1304
    :cond_3
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    .line 1305
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1307
    iget-object v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->o(Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1310
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$6$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$6$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$6;)V

    invoke-virtual {v1, v2, v0, v3}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;)V

    goto/16 :goto_0

    .line 1325
    :cond_4
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_5

    .line 1326
    if-eqz p2, :cond_5

    .line 1327
    const v1, 0x7f0a0139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1328
    instance-of v2, v1, Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v2, :cond_5

    .line 1329
    check-cast v1, Lcom/snapchat/android/ui/ImageResourceView;

    .line 1330
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1331
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->a()V

    goto/16 :goto_0

    .line 1339
    :cond_5
    instance-of v1, v0, Lako;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lako;

    invoke-interface {v1}, Lako;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1340
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1342
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyl;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    move-object v1, v0

    check-cast v1, Lako;

    invoke-virtual {v3, v4, v1, v2}, Lyl;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lako;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1340
    :cond_6
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1
.end method
