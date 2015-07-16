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
    .line 1318
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

    .line 1321
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 1324
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1326
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-nez v1, :cond_0

    instance-of v1, v0, Lalb;

    if-nez v1, :cond_0

    .line 1327
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->R()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1328
    instance-of v1, v0, Lalc;

    if-eqz v1, :cond_2

    .line 1329
    new-instance v1, Lzo;

    invoke-direct {v1}, Lzo;-><init>()V

    check-cast v0, Lalc;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lzo;->a(Lalc;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0

    .line 1330
    :cond_2
    instance-of v1, v0, Lakw;

    if-eqz v1, :cond_3

    .line 1331
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzm;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    check-cast v0, Lakw;

    invoke-virtual {v1, v2, v0, v3, v3}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V

    goto :goto_0

    .line 1334
    :cond_3
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    .line 1335
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1337
    iget-object v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1340
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$6$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$6$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$6;)V

    invoke-virtual {v1, v2, v0, v3}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$b;)V

    goto/16 :goto_0

    .line 1355
    :cond_4
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_5

    .line 1356
    if-eqz p2, :cond_5

    .line 1357
    const v1, 0x7f0a0139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1358
    instance-of v2, v1, Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v2, :cond_5

    .line 1359
    check-cast v1, Lcom/snapchat/android/ui/ImageResourceView;

    .line 1360
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1361
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->a()V

    goto/16 :goto_0

    .line 1369
    :cond_5
    instance-of v1, v0, Lalj;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lalj;

    invoke-interface {v1}, Lalj;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1372
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lzh;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    move-object v1, v0

    check-cast v1, Lalj;

    invoke-virtual {v3, v4, v1, v2}, Lzh;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lalj;Ljava/lang/String;)V

    .line 1374
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1370
    :cond_6
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1
.end method
