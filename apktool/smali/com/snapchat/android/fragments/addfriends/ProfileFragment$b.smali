.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgh;


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
    .line 1085
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lfl;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1091
    const-string v0, "ProfileFragment"

    const-string v2, "getActivity() returned null in onSvgLoaded() we need to figure this out!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :goto_0
    return-void

    .line 1095
    :cond_0
    if-nez p1, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Laol;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lajx;

    invoke-static {}, Lajx;->bf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laol;->c(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    .line 1101
    :cond_2
    invoke-virtual {p1}, Lfl;->a()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    .line 1102
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(I)V

    .line 1112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lajx;

    invoke-static {}, Lajx;->E()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lajx;

    invoke-static {}, Lajx;->aS()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1114
    :goto_1
    if-eqz v0, :cond_6

    .line 1115
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-nez v0, :cond_3

    .line 1122
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ProfilePictureView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    .line 1123
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProfilePictureView;->setCallback(Lcom/snapchat/android/ui/ProfilePictureView$a;)V

    .line 1125
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/ProfilePictureView;->setSnapcodeSvg(Lfl;)V

    .line 1128
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1129
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setSnapcodeSvg(Lfl;)V

    .line 1132
    const-string v0, "ProfileFragment"

    const-string v2, "profile images - snapcode was loaded from cache"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1112
    goto :goto_1

    .line 1118
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
