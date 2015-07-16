.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V
    .locals 0

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lfu;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1152
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1157
    :cond_0
    if-nez p1, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Laph;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;

    invoke-static {}, Lakr;->bc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laph;->c(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    .line 1163
    :cond_2
    invoke-virtual {p1}, Lfu;->a()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    .line 1164
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1168
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(I)V

    .line 1174
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;

    invoke-static {}, Lakr;->E()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;

    invoke-static {}, Lakr;->aP()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1176
    :goto_1
    if-eqz v0, :cond_6

    .line 1177
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-nez v0, :cond_3

    .line 1184
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ProfilePictureView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    .line 1185
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->setCallback(Lcom/snapchat/android/ui/ProfilePictureView$a;)V

    .line 1187
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/ProfilePictureView;->setSnapcodeSvg(Lfu;)V

    .line 1190
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    .line 1193
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setSnapcodeSvg(Lfu;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1174
    goto :goto_1

    .line 1180
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
